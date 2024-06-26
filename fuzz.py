import argparse
import os.path

from pathlib import Path
from evaluation_lib.evaluation_program_parser import parse_evaluation_programs_file


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
    # TODO(JLJ): Remove the need for this.
    os.chdir(args.evaluation_dir)

    projects = parse_evaluation_programs_file(evaluation_programs_file)

    for project in projects:
        project.fuzz(args.threads)


if __name__ == "__main__":
    main()
