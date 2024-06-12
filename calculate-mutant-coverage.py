import argparse
import json
from pathlib import Path
from typing import Set


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("mutation_info_file",
                        help="",  # TODO(JLJ): Add help.
                        type=Path)
    parser.add_argument("mutant_tracking_executable",
                        help="",  # TODO(JLJ): Add help.
                        type=Path)
    parser.add_argument("input_directory",
                        help="",  # TODO(JLJ): Add help.
                        type=Path)
    # TODO(JLJ): Add arguments
    args = parser.parse_args()

    with open(args.mutation_info_file) as json_input:
        mutation_tree = MutationTree(json.load(json_input))

    killed_mutants: Set[int] = set()
    unkilled_mutants: Set[int] = set(range(0, mutation_tree.num_mutations))

    # TODO(JLJ):
    #  1. Run each input through the mutant tracking executable.
    #  2. Add any killed mutants to `killed_mutants` and remove from `unkilled_mutants`.
    #  3. Store the information about what inputs killed what mutants in an output file.
