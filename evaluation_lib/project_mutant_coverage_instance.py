import json
import signal
import subprocess
import sys
import os
import tempfile
import time
from enum import Enum

from typing import Set, AnyStr, Dict, List, Optional
from pathlib import Path

from evaluation_lib.mutation_tree import MutationTree
from evaluation_lib.project import Project
from evaluation_lib.project_coverage_instance import ProjectCoverageInstance

sys.path.insert(0, f'{os.environ["DREDD_EVAL"]}/third_party/dredd/build/src/libdredd/protobufs/')
import dredd_pb2


class KillStatus(Enum):
    SURVIVED = 1
    KILL_TIMEOUT = 2
    KILL_FAIL = 3


class ProcessResult:
    def __init__(self, returncode: int, stdout: bytes, stderr: bytes):
        self.returncode: int = returncode
        self.stdout: bytes = stdout
        self.stderr: bytes = stderr


def run_process_with_timeout(cmd: str,
                             timeout_seconds: int = 60,
                             env: Optional[Dict[AnyStr, AnyStr]] = None,
                             cwd: Path = None) -> Optional[ProcessResult]:
    process = None
    try:
        process = subprocess.Popen(cmd.split(),
                                   start_new_session=True,
                                   stdout=subprocess.PIPE,
                                   stderr=subprocess.PIPE,
                                   env=env,
                                   cwd=cwd)
        process_stdout, process_stderr = process.communicate(timeout=timeout_seconds)
        return ProcessResult(returncode=process.returncode, stdout=process_stdout, stderr=process_stderr)
    except subprocess.TimeoutExpired:
        os.killpg(os.getpgid(process.pid), signal.SIGTERM)
        return None


class ProjectMutantCoverageInstance(ProjectCoverageInstance):

    def __init__(self, project: Project):
        gcov_instance_name = f"{project.project_name}-mutant-tracking"
        super().__init__(gcov_instance_name, project)

    def check_setup(self):
        return NotImplementedError

    def calculate_coverage(self, hide_output: bool = True):
        # Adapted from:
        # https://github.com/mc-imperial/dredd-compiler-testing/blob/main/dredd_test_runners/llvm_regression_tests_runner/main.py
        # TODO(JLJ): Move the knowledge of the location of the mutation files to a config file.
        with open(os.path.join(self.project.project_name, "mutation_info_file.json"), "r") as mutation_info_file:
            mutation_tree = MutationTree(json.load(mutation_info_file))
        with open(os.path.join(self.project.project_name, "mutant_tracking_info_file.json"),
                  "r") as mutant_tracking_info_file:
            mutation_tree_for_coverage_tracking = MutationTree(json.load(mutant_tracking_info_file))

        print(self.project.project_name)

        assert mutation_tree.mutation_id_to_node_id == mutation_tree_for_coverage_tracking.mutation_id_to_node_id
        assert mutation_tree.parent_map == mutation_tree_for_coverage_tracking.parent_map
        assert mutation_tree.num_nodes == mutation_tree_for_coverage_tracking.num_nodes
        assert mutation_tree.num_mutations == mutation_tree_for_coverage_tracking.num_mutations

        for project_fuzz_instance in self.project.fuzz_instances:
            with tempfile.TemporaryDirectory() as temp_dir_for_generated_code:
                dredd_covered_mutants_path: Path = Path(temp_dir_for_generated_code, '__dredd_covered_mutants')

                killed_mutants: Set[int] = set()
                unkilled_mutants: Set[int] = set(range(0, mutation_tree.num_mutations))

                Path("work").mkdir(exist_ok=True)
                Path("work/tests").mkdir(exist_ok=True)
                Path("work/killed_mutants").mkdir(exist_ok=True)

                # Get all fuzzer generated tests.
                tests = project_fuzz_instance.get_generated_tests()
                print(tests)

                for test_filename in tests:
                    test_output_directory: Path = Path("work/tests/" + test_filename)
                    try:
                        test_output_directory.mkdir()
                    except FileExistsError:
                        print("Skipping test " + test_filename + " as a directory for it already exists")
                        continue

                    base_command = project_fuzz_instance.get_execution_command(test_filename)
                    test_time_start: float = time.perf_counter()
                    print(os.path.isfile(base_command[0]))
                    base_result = run_process_with_timeout(base_command)
                    test_time_end: float = time.perf_counter()
                    test_time = test_time_end - test_time_start
                    if not base_result:
                        print(f"Skipping {test_filename} as it timed-out.")
                    elif base_result.returncode != 0:
                        print(f"Skipping {test_filename} as it returned a non-zero exit code {base_result.returncode}.")
                        print(f"stdout: {base_result.stdout}")
                        print(f"stderr: {base_result.stderr}")
                        continue

                    if dredd_covered_mutants_path.exists():
                        os.remove(dredd_covered_mutants_path)

                    tracking_environment: Dict[AnyStr, AnyStr] = os.environ.copy()
                    tracking_environment["DREDD_MUTANT_TRACKING_FILE"] = str(dredd_covered_mutants_path)

                    # TODO(JLJ): Check the result of running the test through the -instrumented version.
                    # TODO(JLJ): Check the return result is 0.
                    mutation_tracking_command = self.get_execution_command(test_filename)
                    mutation_tracking_result = run_process_with_timeout(mutation_tracking_command)
                    if not mutation_tracking_result:
                        print(f"Skipping {test_filename} as it timed-out on the mutant tracking compiler.")
                    elif base_result.returncode != 0:
                        print(f"Skipping {test_filename} as the result differed from the base version")
                        print(f"base return code: {base_result.stdout}")
                        print(f"mutant-tracking return code: {mutation_tracking_result.stdout}")
                        print(f"stdout: {base_result.stdout}")
                        print(f"stderr: {base_result.stderr}")
                        continue

                    covered_by_this_test: List[int] = list(set([int(line.strip()) for line in
                                                                open(dredd_covered_mutants_path, 'r').readlines()]))
                    covered_by_this_test.sort()
                    candidate_mutants_for_this_test: List[int] = (
                        [m for m in covered_by_this_test if m not in killed_mutants])
                    print("Number of mutants to try: " + str(len(candidate_mutants_for_this_test)))

                    already_killed_by_other_tests: List[int] = (
                        [m for m in covered_by_this_test if m in killed_mutants])
                    killed_by_this_test: List[int] = []
                    covered_but_not_killed_by_this_test: List[int] = []

                    for mutant in candidate_mutants_for_this_test:
                        mutant_path = Path("work/killed_mutants/" + str(mutant))
                        if mutant_path.exists():
                            print("Skipping mutant " + str(mutant) + " as it is noted as already killed.")
                            unkilled_mutants.remove(mutant)
                            killed_mutants.add(mutant)
                            already_killed_by_other_tests.append(mutant)
                            continue
                        print("Trying mutant " + str(mutant))
                        mutated_environment = os.environ.copy()
                        mutated_environment["DREDD_ENABLED_MUTATION"] = str(mutant)
                        mutated_test_result: ProcessResult = run_process_with_timeout(
                            cmd=base_command,
                            timeout_seconds=int(max(1.0, 5.0 * test_time)),
                            env=mutated_environment)

                        if mutated_test_result is None:
                            mutant_result = KillStatus.KILL_TIMEOUT
                        elif mutated_test_result.returncode != 0:
                            mutant_result = KillStatus.KILL_FAIL
                        else:
                            mutant_result = KillStatus.SURVIVED

                        print("Mutant result: " + str(mutant_result))
                        if mutant_result == KillStatus.SURVIVED:
                            covered_but_not_killed_by_this_test.append(mutant)
                            continue

                        unkilled_mutants.remove(mutant)
                        killed_mutants.add(mutant)
                        killed_by_this_test.append(mutant)
                        print(f"Kill! Mutants killed so far: {len(killed_mutants)}")
                        try:
                            mutant_path.mkdir()
                            print("Writing kill info to file.")
                            with open(mutant_path / "kill_info.json", "w") as outfile:
                                json.dump(
                                    {"killing_test": test_filename, "kill_type": str(mutant_result)},
                                    outfile)
                        except FileExistsError:
                            print(f"Mutant {mutant} was independently discovered to be killed.")
                            continue

                        # Now that analysis for this test case has completed, write summary information to its directory
                    all_considered_mutants = killed_by_this_test \
                                             + covered_but_not_killed_by_this_test \
                                             + already_killed_by_other_tests
                    all_considered_mutants.sort()
                    # We should have put every mutant into some bucket or other
                    assert covered_by_this_test == all_considered_mutants
                    killed_by_this_test.sort()
                    covered_but_not_killed_by_this_test.sort()
                    already_killed_by_other_tests.sort()
                    with open(test_output_directory / "kill_summary.json", "w") as outfile:
                        json.dump({"test": test_filename,
                                   "covered_mutants": covered_by_this_test,
                                   "killed_mutants": killed_by_this_test,
                                   "skipped_mutants": already_killed_by_other_tests,
                                   "survived_mutants": covered_but_not_killed_by_this_test}, outfile)
