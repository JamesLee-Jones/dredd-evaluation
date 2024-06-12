import argparse
import os
import re
import glob
from pathlib import Path
from fuzz import fuzz
from calculate_coverage import calculate_coverage


def parse_evaluation_programs_file(path: Path):
    # TODO(JLJ): Add doc string.
    result = []

    with open(path) as evaluation_programs:
        lines = evaluation_programs.readlines()

        for line in lines:
            # Allow comments in the file
            if line.strip()[0] == '#':
                continue

            # TODO(JLJ): Consider using argparser for this.
            split_line = line.split()
            if len(split_line) < 6:
                raise Exception(f"Input '{line}' does not have enough arguments. Input must be of the form:\n"
                                f"  project_name source duration input_dir output_dr executable_location {{options}} "
                                f"{{input_type}} {{extension}}")

            project_name, source, duration, input_dir, output_dir, executable_location, *options = split_line

            # Check duration is of the correct form.
            if not re.fullmatch(r'^\d+[hms]$', duration):
                raise Exception(f"The duration '{duration}' is not correctly formatted. It must be digits followed by "
                                f"an h (hour), m (minute) or s (second) specifier.")

            project = {
                "project_name": project_name,
                "source": source,
                "duration": duration,
                "input_dir": input_dir,
                "output_dir": output_dir,
                "executable_location": executable_location,
            }

            flags = ""
            for option in options:
                if option[0] == '-':
                    flags += option + " "

                if option == "@@":
                    project['input_type'] = option

                if option[0] == '.':
                    project['extension'] = option
            if flags != "":
                project['executable_flags'] = flags

            check_project_setup(project)
            result.append(project)

    return result


def check_project_setup(project):
    project_root = f"{project['project_name']}"
    if not os.path.isdir(project_root):
        raise EnvironmentError(f"Check that {project['project_name']} is present in {os.getcwd()}.")

    # TODO(JLJ): Add "-mutant-tracking" when implemented.
    required_project_extensions = ["", "-gcov", "-instrumented"]
    # Check that all the required versions of the project exist.
    for extension in required_project_extensions:
        project_version = f"{project['project_name']}{extension}"
        project_version_folder = f"{project_root}/{project_version}"

        # Check that the version exists and is not empty.
        if not os.path.isdir(project_version_folder) or not os.listdir(project_version_folder):
            raise EnvironmentError(
                f"Check that {project_version_folder} is present in {os.getcwd()} and non-empty.")

        # Check that the required source file exists
        if not glob.glob(f"{project_version_folder}/{project['source']}"):
            raise EnvironmentError(f"Check that {project['source']} is present in {project_version_folder}.")

        # Check that the required executable exists
        if not os.path.isfile(f"{project_version_folder}/{project['executable_location']}"):
            raise EnvironmentError(f"Check that {project_version} has been compiled and {project['executable_location']} is "
                            f"present.")

    # TODO(JLJ): Check that "-instrumented" looks like it has been modified.
    # TODO(JLJ): Check that the necessary versions have been compiled with the AFL compiler.

    if not os.path.isdir(project['input_dir']) or not os.listdir(project['input_dir']):
        raise EnvironmentError(f"Check that {project['input_dir']} exists and is non-empty.")

    # If the output directory doesn't exist, create it.
    if not os.path.isdir(project['output_dir']):
        os.makedirs(os.path.join(os.getcwd(), project['output_dir']))
        if not os.path.isdir(f"{project['output_dir']}/{project['project_name']}"):
            os.makedirs(os.path.join(os.getcwd(), f"{project['output_dir']}/{project['project_name']}"))
        if not os.path.isdir(f"{project['output_dir']}/{project['project_name']}-instrumented"):
            os.makedirs(os.path.join(os.getcwd(), f"{project['output_dir']}/{project['project_name']}-instrumented"))


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

    # TODO(JLJ): Check environment is correct.
    if os.environ.get("AFL_COV") is None:
        raise EnvironmentError("Environment variable AFL_COV is not set.")

    for program in programs:
        # TODO(JLJ): Consider creating copies of program rather than passing a modifier.
        fuzz(program, f"{program['project_name']}", args.threads)
        fuzz(program, f"{program['project_name']}-instrumented", args.threads)

        calculate_coverage(program, f"{program['project_name']}")
        calculate_coverage(program, f"{program['project_name']}-instrumented")


if __name__ == "__main__":
    main()
