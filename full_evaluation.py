import argparse
import os
from pathlib import Path
from fuzz import fuzz
from calculate_coverage import calculate_coverage
from utils.evaluation_program_parser import parse_evaluation_programs_file
from utils.check_setup import check_evaluation_setup


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

    check_evaluation_setup(programs)

    for program_base, program_instrumented in programs:
        fuzz(program_base, num_processes=args.threads)
        fuzz(program_instrumented, num_processes=args.threads)

        calculate_coverage(program_base)
        calculate_coverage(program_instrumented)

        # TODO(JLJ): Add data summarization step


if __name__ == "__main__":
    main()
