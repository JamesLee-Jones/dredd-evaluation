import argparse
import os.path
import subprocess

from typing import Dict


def fuzz(project: Dict, num_processes: int = 1):
    processes = []

    for i in range(num_processes):
        fuzz_command = get_fuzz_command(project, f"Fuzzer{i}", i>0)
        process = subprocess.Popen(fuzz_command, shell=True)
        processes.append(process)

    [p.wait() for p in processes]


def get_fuzz_command(project: Dict, fuzzer_name: str, hide_output: bool = False):

    command = f"timeout {project['duration']} afl-fuzz -i {project['input_dir']} -o {project['output_dir']} "
    if "extension" in project:
        command += f"-e {project['extension']} "

    command += f"-M {fuzzer_name} -- {project['project_name']}/{project['project_version']}/{project['executable_location']} "
    if "executable_flags" in project:
        command += f"{project['executable_flags']} "
    if "input_type" in project:
        command += f"{project['input_type']} "
        
    if hide_output:
        command += "> /dev/null 2>&1 "

    return command


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

    fuzz(project)


if __name__ == "__main__":
    main()
