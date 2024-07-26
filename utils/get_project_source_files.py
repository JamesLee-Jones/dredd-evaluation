import argparse
import sys
import os
from pathlib import Path

sys.path.insert(1, f"{os.environ['DREDD_EVAL']}")
from evaluation_lib.evaluation_program_parser import parse_evaluation_programs_file

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("evaluation_setup",
                        help="",  # TODO(JLJ): Add help.
                        type=Path)
    parser.add_argument("project",
                        type=str)
    args = parser.parse_args()

    evaluation_setup = parse_evaluation_programs_file(args.evaluation_setup, skip_initialization_check=True, chdir=False)

    result = []

    for project in evaluation_setup.projects:
        if project.project_name.strip() == args.project.strip():
            result.append(project.source)

    print(*set(result))


if __name__ == '__main__':
    main()
