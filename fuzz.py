import argparse
import os.path

from pathlib import Path
from evaluation_lib.evaluation_program_parser import parse_evaluation_programs_file


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("evaluation_programs",
                        help="",  # TODO(JLJ): Add help.
                        type=Path)
    args = parser.parse_args()

    evaluation_programs_file = os.path.abspath(args.evaluation_programs)
    # TODO(JLJ): Remove the need for this.

    evaluation_setup = parse_evaluation_programs_file(evaluation_programs_file)
    os.chdir(evaluation_setup.evaluation_dir)


    for project in evaluation_setup.projects:
        project.fuzz(sanitizers=evaluation_setup.sanitizers, threads=evaluation_setup.processes)


if __name__ == "__main__":
    main()
