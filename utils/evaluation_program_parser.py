import os
import re
from pathlib import Path
from typing import List, Tuple, Dict


def parse_evaluation_programs_file(path: Path) -> List[Tuple[Dict, Dict]]:
    # TODO(JLJ): Add doc string.
    # TODO(JLJ): Move this function
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

            project_base = {
                "project_name": project_name,
                "project_version": project_name,
                "source": source,
                "duration": duration,
                "input_dir": input_dir,
                "output_dir": f"{output_dir}/{os.path.basename(executable_location)}",
                "executable_location": executable_location,
            }

            flags = ""
            for option in options:
                if option[0] == '-':
                    flags += option + " "

                if option == "@@":
                    project_base['input_type'] = option

                if option[0] == '.':
                    project_base['extension'] = option
            if flags != "":
                project_base['executable_flags'] = flags

            project_instrumented = project_base.copy()
            project_instrumented['project_version'] += "-instrumented"
            project_instrumented['output_dir'] += "-instrumented"

            result.append((project_base, project_instrumented))

    return result
