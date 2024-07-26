import os
import re
import yaml
from pathlib import Path
from typing import List

from evaluation_lib.evaluation_setup import EvaluationSetup
from evaluation_lib.project import Project


def parse_evaluation_programs_file(path: Path, skip_initialization_check: bool = False, chdir: bool = True) -> EvaluationSetup:
    # TODO(JLJ): Add doc string.
    result = EvaluationSetup()

    with open(path) as yaml_file:
        setup = yaml.safe_load(yaml_file)

        if setup['processes']:
            result.processes = setup['processes']

        if setup['evaluation_dir']:
            result.evaluation_dir = setup['evaluation_dir']
            if chdir:
                os.chdir(result.evaluation_dir)

        if setup['sanitizers']:
            result.sanitizers = setup['sanitizers']

        for project_setup in setup['projects']:

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

            coverage_executable_location = project_setup['coverage_executable_location'] if 'coverage_executable_location' in project_setup else project_setup['executable_location']
            coverage_executable_options = project_setup['coverage_executable_options'] if 'coverage_executable_location' in project_setup else project_setup['executable_location']
            project = Project(project_setup['project_name'],
                              project_setup['source'],
                              project_setup['fuzz_duration'],
                              Path(project_setup['input_dir']),
                              Path(project_setup['output_dir']),
                              Path(project_setup['executable_location']),
                              Path(coverage_executable_location))

            if 'coverage_executable_options' in project_setup:
                project.coverage_executable_options = project_setup['coverage_executable_options']

            if 'executable_options' in project_setup:
                project.executable_options = project_setup['executable_options']
                if not project.coverage_executable_options:
                    project.coverage_executable_options = project.executable_options

            if 'file_extension' in project_setup:
                project.file_extension = project_setup['file_extension']

            project.add_fuzz_instance(project.project_name, skip_initialization_check)
            project.add_fuzz_instance(f"{project.project_name}-instrumented", skip_initialization_check)

            result.projects.append(project)

    return result
