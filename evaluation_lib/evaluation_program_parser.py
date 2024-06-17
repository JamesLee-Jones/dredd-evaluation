import re
from pathlib import Path
from typing import List

from evaluation_lib.project import Project


def parse_evaluation_programs_file(path: Path, skip_initialization_check: bool = False) -> List[Project]:
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

            project = Project(project_name, source, duration, Path(input_dir), Path(output_dir), Path(executable_location))

            for option in options:
                if option[0] == '-':
                    if project.executable_flags is None:
                        project.executable_flags = ""
                    project.executable_flags += option + " "

                if option == "@@":
                    project.input_type = option

                if option[0] == '.':
                    project.extension = option

            project.add_fuzz_instance(project.project_name, skip_initialization_check)
            project.add_fuzz_instance(f"{project.project_name}-instrumented", skip_initialization_check)

            result.append(project)

    return result
