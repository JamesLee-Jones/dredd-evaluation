import re
import yaml
from pathlib import Path
from typing import List

from evaluation_lib.project import Project


def parse_evaluation_programs_file(path: Path, skip_initialization_check: bool = False) -> List[Project]:
    # TODO(JLJ): Add doc string.
    result = []

    with open(path) as yaml_file:
        projects_setup = yaml.safe_load(yaml_file)

        for project_setup in projects_setup:

            # TODO(JLJ): Check yaml contains required params
            if (not ('project_name' in project_setup) or
                    not ('source' in project_setup) or
                    not ('fuzz_duration' in project_setup) or
                    not ('input_dir' in project_setup) or
                    not ('output_dir' in project_setup) or
                    not ('executable_location' in project_setup)):
                raise ValueError("The input yaml file is invalid. It must contain 'project_name', 'source', "
                                 "'fuzz_duration', 'input_dir', 'output_dir', 'executable_location'")

            # Check duration is of the correct form.
            if not re.fullmatch(r'^\d+[hms]$', project_setup['fuzz_duration']):
                raise Exception(f"The duration '{project_setup['fuzz_duration']}' is not correctly formatted. "
                                f"It must be digits followed by an h (hour), m (minute) or s (second) specifier.")

            project = Project(project_setup['project_name'],
                              project_setup['source'],
                              project_setup['fuzz_duration'],
                              Path(project_setup['input_dir']),
                              Path(project_setup['output_dir']),
                              Path(project_setup['executable_location']))

            if 'executable_options' in project_setup:
                project.executable_options = project_setup['executable_options']

            if 'file_extension' in project_setup:
                project.file_extension = project_setup['file_extension']

            project.add_fuzz_instance(project.project_name, skip_initialization_check)
            project.add_fuzz_instance(f"{project.project_name}-instrumented", skip_initialization_check)

            result.append(project)

    return result
