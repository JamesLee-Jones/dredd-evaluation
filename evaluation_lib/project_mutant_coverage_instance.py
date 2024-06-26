import json
import signal
import subprocess
import sys
import os
import tempfile

from typing import Set, AnyStr, Dict
from pathlib import Path

from evaluation_lib.mutation_tree import MutationTree
from evaluation_lib.project import Project
from evaluation_lib.project_coverage_instance import ProjectCoverageInstance

sys.path.insert(0, f'{os.environ["DREDD_EVAL"]}/third_party/dredd/build/src/libdredd/protobufs/')
import dredd_pb2


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
        with open(os.path.join(self.project.project_name, "mutant_tracking_info_file.json"), "r") as mutant_tracking_info_file:
            mutation_tree_for_coverage_tracking = MutationTree(json.load(mutant_tracking_info_file))

        assert mutation_tree.mutation_id_to_node_id == mutation_tree_for_coverage_tracking.mutation_id_to_node_id
        assert mutation_tree.parent_map == mutation_tree_for_coverage_tracking.parent_map
        assert mutation_tree.num_nodes == mutation_tree_for_coverage_tracking.num_nodes
        assert mutation_tree.num_mutations == mutation_tree_for_coverage_tracking.num_mutations

        for project_fuzz_instance in self.project.fuzz_instances:
            with tempfile.TemporaryDirectory() as temp_dir_for_generated_code:
                dredd_covered_mutants_path: Path = Path(temp_dir_for_generated_code, '__dredd_covered_mutants')

                killed_mutants: Set[int] = set()
                unkilled_mutants: Set[int] = set(range(0, mutation_tree.num_mutations))

                # Get all fuzzer generated tests.
                tests = project_fuzz_instance.get_generated_tests()

                for test_filename in tests:
                    tracking_environment: Dict[AnyStr, AnyStr] = os.environ.copy()
                    tracking_environment["DREDD_MUTANT_TRACKING_FILE"] = str(dredd_covered_mutants_path)

                    # TODO(JLJ): Check the result of running the test through the -instrumented version.

                    mutation_tracking_command = self.get_execution_command(test_filename)
                    mutation_tracking_result = None
                    try:
                        mutation_tracking_result = subprocess.Popen(mutation_tracking_command,
                                                                    stdout=subprocess.PIPE,
                                                                    stderr=subprocess.PIPE,
                                                                    env=tracking_environment)
                        stdout, stderr = mutation_tracking_result.communicate(timeout=60)
                    except subprocess.TimeoutExpired:
                        os.killpg(os.getpgid(mutation_tracking_result.pid), signal.SIGTERM)
                        continue

                    covered_by_this_test: List[int] = []


                    pass

        raise NotImplementedError
