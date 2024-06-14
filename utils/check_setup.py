import os
import glob
import subprocess
from typing import List, Tuple, Dict


def check_evaluation_setup(projects: List[Tuple[Dict, Dict]]):
    check_fuzz_setup(projects)
    check_coverage_setup(projects)


def check_executable_compiled_with_afl():
    # TODO(JLJ): Implement
    raise NotImplementedError


def check_coverage_setup(projects: List[Tuple[Dict, Dict]]):
    if os.environ.get("AFL_COV") is None:
        raise EnvironmentError("Environment variable AFL_COV is not set.")

    process = subprocess.Popen("afl-cov --version", shell=True)
    process.wait()
    if process.returncode != 0:
        raise EnvironmentError("Check afl-cov is in PATH.")

    for project_setups in projects:
        for project in project_setups:
            project_root = f"{project['project_name']}"
            if not os.path.isfile(os.path.join(project_root, "mutant_info_file.json")):
                raise EnvironmentError(f"Check that mutant_info_file.json is present in {project_root}.")

            if not os.path.isfile(os.path.join(project_root, "mutant_tracking_info_file.json")):
                raise EnvironmentError(f"Check that mutant_tracking_info_file.json is present in {project_root}.")

            if not os.path.isdir(project['output_dir']) or not os.listdir(project['output_dir']):
                raise EnvironmentError(f"Check that {project['output_dir']} exists and is non-empty.")

            # TODO(JLJ): Add more checks


def check_fuzz_setup(projects: List[Tuple[Dict, Dict]]):
    for project_setups in projects:
        for project in project_setups:
            project_root = f"{project['project_name']}"
            if not os.path.isdir(project_root):
                raise EnvironmentError(f"Check that {project_root} is present in {os.getcwd()}.")

            project_version_folder = f"{project_root}/{project['project_version']}"
            # Check that the version exists and is not empty.
            if not os.path.isdir(project_version_folder) or not os.listdir(project_version_folder):
                raise EnvironmentError(
                    f"Check that {project_version_folder} is present in {os.getcwd()} and non-empty.")

            # Check that the required source files exists
            if not glob.glob(f"{project_version_folder}/{project['source']}"):
                raise EnvironmentError(f"Check that {project['source']} is present in {project_version_folder}.")

            # Check that the required executable exists
            if not os.path.isfile(f"{project_version_folder}/{project['executable_location']}"):
                raise EnvironmentError(
                    f"Check that {project['project_version']} has been compiled and {project['executable_location']} is "
                    f"present.")

            if not os.path.isdir(project['input_dir']) or not os.listdir(project['input_dir']):
                raise EnvironmentError(f"Check that {project['input_dir']} exists and is non-empty.")

            # If the output directory doesn't exist, create it.
            if not os.path.isdir(project['output_dir']):
                os.makedirs(os.path.join(os.getcwd(), project['output_dir']))

            # TODO(JLJ): Check that "-instrumented" looks like it has been modified.
            # TODO(JLJ): Check that the necessary versions have been compiled with the AFL compiler.
