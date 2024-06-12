import argparse
import subprocess
from typing import Dict


def calculate_coverage(project: Dict, project_version: str = "", hide_output: bool = False):
    calculate_statement_coverage(project, project_version, hide_output)
    calculate_mutant_coverage(project, project_version, hide_output)


def calculate_statement_coverage(project: Dict, project_version: str = "", hide_output: bool = False):
    command = f"afl-cov --cover-corpus -d {project['output_dir']}/{project_version} --coverage-cmd \"{project['project_name']}/{project['project_name']}-gcov/{project['executable_location']} "

    if "executable_flags" in project:
        command += f"{project['executable_flags']} "
    if "input_type" in project:
        command += f"{project['input_type']} "

    command += f"\" --code-dir \"{project['project_name']}/{project['project_name']}-gcov\" "

    if hide_output:
        command += "> /dev/null 2>&1 "

    # command += "&"

    # TODO(JLJ): Figure out why this isn't working for tint.
    process = subprocess.Popen(command, shell=True)
    process.wait()


def calculate_mutant_coverage(project: Dict, project_version: str = "", hide_output: bool = False):
    # TODO(JLJ): Implement
    raise NotImplementedError


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("project_name",
                        help="",  # TODO(JLJ): Add help.
                        type=str)
    parser.add_argument("duration",
                        help="",
                        type=str)
    parser.add_argument("input_dir",
                        help="",
                        type=str)
    parser.add_argument("output_dir",
                        help="",
                        type=str)
    parser.add_argument("executable_location",
                        help="",
                        type=str)
    parser.add_argument("--input_type",
                        help="",
                        choices=['@@'],
                        type=str)
    parser.add_argument("--extension",
                        help="",
                        type=str)
    parser.add_argument("--executable_flags",
                        help="",
                        nargs='*',
                        type=str)
    args = parser.parse_args()

    # TODO(JLJ): Validate arguments.
    project = {
        "project_name": args.project_name,
        "duration": args.duration,
        "input_dir": args.input_dir,
        "output_dir": args.output_dir,
        "executable_location": args.executable_location,
        "options": args.options
    }

    # TODO(JLJ): Reduce duplication with fuzz.py
    calculate_coverage(project)


if __name__ == "__main__":
    main()
