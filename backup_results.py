import argparse
import os.path
import shutil
from pathlib import Path

from full_evaluation import parse_evaluation_programs_file


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("evaluation_programs",
                        help="",  # TODO(JLJ): Add help.
                        type=Path)
    parser.add_argument("evaluation_dir",
                        help="The directory to use as the root for all evaluation. This directory should contain all "
                             "of the executables and source files listed in in the `evaluation_program` file.",
                        type=Path)
    parser.add_argument("backup_dir",
                        help="",
                        type=Path)
    args = parser.parse_args()

    programs = parse_evaluation_programs_file(args.evaluation_programs)

    evaluation_dir = os.path.join(os.getcwd(), args.evaluation_dir)
    backup_dir = os.path.join(os.getcwd(), args.backup_dir)

    if not os.path.isdir(backup_dir):
        os.mkdir(backup_dir)

    for program in programs:
        result_dir = os.path.join(evaluation_dir, program['output_dir'])

        # Copy the base results
        base_results_dir = os.path.basename(program['executable_location'])
        shutil.copytree(os.path.join(result_dir, base_results_dir), os.path.join(backup_dir, base_results_dir))

        # Copy the instrumented results
        instrumented_results_dir = base_results_dir + "-instrumented"
        shutil.copytree(os.path.join(result_dir, instrumented_results_dir), os.path.join(backup_dir, instrumented_results_dir))


if __name__ == "__main__":
    main()
