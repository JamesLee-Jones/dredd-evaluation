import argparse
from pathlib import Path

from evaluation_lib.evaluation_program_parser import parse_evaluation_programs_file

def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("evaluation_setup",
                        help="",  # TODO(JLJ): Add help.
                        type=Path)
    parser.add_argument("project",
                        type=Path)
    args = parser.parse_args()

    projects = parse_evaluation_programs_file(args.evaluation_setup)

    result = []

    for project in projects:
        if project.project_name == args.project:
            result.append(project.source)

    print(*result)


if __name__ == '__main__':
    main()
