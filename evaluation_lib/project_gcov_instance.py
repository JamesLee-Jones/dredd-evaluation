import os
import subprocess

from evaluation_lib.project import Project
from evaluation_lib.project_coverage_instance import ProjectCoverageInstance


class ProjectGcovInstance(ProjectCoverageInstance):
    def __init__(self, project: Project):
        gcov_instance_name = f"{project.project_name}-gcov"
        super().__init__(gcov_instance_name, project)

    def check_setup(self):
        if os.environ.get("AFL_COV") is None:
            raise EnvironmentError("Environment variable AFL_COV is not set.")

        process = subprocess.Popen("afl-cov --version", shell=True)
        process.wait()
        if process.returncode != 0:
            raise EnvironmentError("Check afl-cov is in PATH.")

        project_root = self.project.project_name
        if not os.path.isfile(os.path.join(project_root, "mutation_info_file.json")):
            raise EnvironmentError(f"Check that mutant_info_file is present in {project_root}.")

        if not os.path.isfile(os.path.join(project_root, "mutant_tracking_info_file.json")):
            raise EnvironmentError(f"Check that mutant_tracking_info_file is present in {project_root}.")

        if not os.path.isdir(self.project.output_dir):
            raise EnvironmentError(f"Check that {self.project.output_dir} exists and is non-empty.")

        # TODO(JLJ): Add more checks

    def calculate_coverage(self, hide_output: bool = True):
        for project_fuzz_instance in self.project.fuzz_instances:
            command = (f"afl-cov --clang --cover-corpus "
                       f"--enable-branch-coverage "
                       f"-d {project_fuzz_instance.get_output_dir()} "
                       f"--coverage-cmd \"{self.get_coverage_execution_command()}\" "
                       f"--code-dir \"{self.get_instance_location()}\"")

            if hide_output:
                command += " > /dev/null 2>&1"

            print(command)
            process = subprocess.Popen(command, shell=True)
            process.wait()
