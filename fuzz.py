import argparse
import os.path
import subprocess

from pathlib import Path
from typing import Dict, List, Tuple

from utils.check_setup import check_fuzz_setup
from utils.evaluation_program_parser import parse_evaluation_programs_file


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

    check_fuzz_setup(programs)

    for program_base, program_instrumented in programs:
        fuzz(program_base, num_processes=args.threads)
        fuzz(program_instrumented, num_processes=args.threads)


if __name__ == "__main__":
    main()
