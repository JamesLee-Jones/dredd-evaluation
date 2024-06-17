import json
import os
import argparse
import subprocess
from typing import Dict, Set
from pathlib import Path

from utils.check_setup import check_coverage_setup
from utils.evaluation_program_parser import parse_evaluation_programs_file
from utils.mutation_tree import MutationTree


def calculate_coverage(project: Dict, hide_output: bool = False):
    calculate_statement_coverage(project, hide_output)
    calculate_mutant_coverage(project, hide_output)


def calculate_statement_coverage(project: Dict, hide_output: bool = False):
    command = f"afl-cov --clang --cover-corpus -d {project['output_dir']} --coverage-cmd \"{project['project_name']}/{project['project_name']}-gcov/{project['executable_location']} "

    if "executable_flags" in project:
        command += f"{project['executable_flags']} "
    if "input_type" in project:
        command += f"{project['input_type']} "

    command += f"\" --code-dir \"{project['project_name']}/{project['project_name']}-gcov\" "

    if hide_output:
        command += "> /dev/null 2>&1 "

    process = subprocess.Popen(command, shell=True)
    process.wait()


def calculate_mutant_coverage(project: Dict, hide_output: bool = False):
    # TODO(JLJ): Move the knowledge of the location of the mutation files to a config file.
    with open(os.path.join(project['project_name'], "mutant_info_file"), "r") as binary_input:
        mutation_tree = MutationTree(binary_input)
    with open(os.path.join(project['project_name'], "mutant_tracking_info_file"), "r") as binary_input:
        mutation_tree_for_coverage_tracking = MutationTree(binary_input)

    assert mutation_tree.mutation_id_to_node_id == mutation_tree_for_coverage_tracking.mutation_id_to_node_id
    assert mutation_tree.parent_map == mutation_tree_for_coverage_tracking.parent_map
    assert mutation_tree.num_nodes == mutation_tree_for_coverage_tracking.num_nodes
    assert mutation_tree.num_mutations == mutation_tree_for_coverage_tracking.num_mutations

    killed_mutants: Set[int] = set()
    unkilled_mutants: Set[int] = set(range(0, mutation_tree.num_mutations))

    # Get all fuzzer generated tests.
    tests = []
    for folder in os.listdir(project['output_dir']):
        if folder.startswith("Fuzzer"):
            tests += os.listdir(os.path.join(folder, "queue"))

    tests.sort()

    raise NotImplementedError


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("evaluation_programs",
                        help="",  # TODO(JLJ): Add help.
                        type=Path)
    parser.add_argument("evaluation_dir",
                        help="The directory to use as the root for all evaluation. This directory should contain all "
                             "of the executables and source files listed in in the `evaluation_program` file.",
                        type=Path)
    parser.add_argument("--threads",
                        default=1,
                        type=int)
    args = parser.parse_args()

    evaluation_programs_file = os.path.abspath(args.evaluation_programs)
    os.chdir(args.evaluation_dir)

    programs = parse_evaluation_programs_file(evaluation_programs_file)

    check_environment()
    check_coverage_setup(programs)

    for program_base, program_instrumented in programs:
        calculate_coverage(program_base)
        calculate_coverage(program_instrumented)


if __name__ == "__main__":
    main()
