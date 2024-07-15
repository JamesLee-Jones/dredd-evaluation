import argparse
import os.path

from pathlib import Path
from evaluation_lib.evaluation_program_parser import parse_evaluation_programs_file
from evaluation_lib.project_gcov_instance import ProjectGcovInstance
from evaluation_lib.project_mutant_coverage_instance import ProjectMutantCoverageInstance


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

    # Do this first to trigger setup checks.
    for project in evaluation_setup.projects:
        project.add_coverage_instance(ProjectGcovInstance)
        # project.add_coverage_instance(ProjectMutantCoverageInstance)

    for project in evaluation_setup.projects:
        project.calculate_coverage()


if __name__ == "__main__":
    main()
