import glob
import subprocess
import os
from pathlib import Path
from typing import TYPE_CHECKING, Optional

from evaluation_lib.project_instance import ProjectInstance

if TYPE_CHECKING:
    from evaluation_lib.project import Project


class ProjectFuzzInstance(ProjectInstance):
    def __init__(self, instance_name: str, project: 'Project', skip_initialization_check: bool = False) -> None:
        super().__init__(instance_name, project, skip_initialization_check)

    def get_output_dir(self) -> Path:
        return self.project.output_dir / self.instance_name

    def get_execution_command(self, sanitizers: bool, filename: Optional[str] = None) -> str:
        if not sanitizers:
            return super().get_execution_command(filename)

        return f"./{self.project.project_name}/{self.instance_name}-sanitizers/" + self.project.get_execution_command(
            filename)

    def get_fuzz_command(self, fuzzer_number: int, sanitizers: bool, hide_output: bool = False):
        command = ""
        if fuzzer_number == 0:
            command += f"AFL_FINAL_SYNC=1 "
        if self.project.fuzz_duration:
            command += f"timeout {self.project.fuzz_duration} "

        command += f"afl-fuzz -i {self.project.input_dir} -o {self.get_output_dir()} "

        if self.project.file_extension:
            command += f"-e {self.project.file_extension} "
        if self.project.fuzz_execs:
            command += f"-E {self.project.fuzz_execs} "

        command += f"-{'M' if fuzzer_number == 0 else 'S'} Fuzzer{fuzzer_number} -- "
        command += f"{self.get_execution_command(sanitizers)}"

        if hide_output:
            command += " > /dev/null 2>&1"

        return command

    def get_generated_tests(self):
        tests = []
        output_dir: Path = self.get_output_dir()
        for folder in os.listdir(output_dir):
            fuzzer_output_dir = os.path.abspath(output_dir / folder / "queue")
            if folder.startswith("Fuzzer"):
                tests += [f for f in os.listdir(fuzzer_output_dir) if os.path.isfile(str(fuzzer_output_dir) + '/' + f)]

        tests.sort()
        return tests

    def fuzz(self, sanitizers: bool = True, num_processes: int = 7):
        processes = []

        for i in range(num_processes):
            fuzz_command = self.get_fuzz_command(fuzzer_number=i, sanitizers=(sanitizers and i == 1), hide_output=(i > 0))
            print(fuzz_command)
            process = subprocess.Popen(fuzz_command, shell=True)
            processes.append(process)

        [p.wait() for p in processes]

    def check_setup(self):
        project = self.project
        project_root = f"{project.project_name}"
        if not os.path.isdir(project_root):
            raise EnvironmentError(f"Check that {project_root} is present in {os.getcwd()}.")

        project_version_folder = f"{project_root}/{self.instance_name}"
        # Check that the version exists and is not empty.
        if not os.path.isdir(project_version_folder) or not os.listdir(project_version_folder):
            raise EnvironmentError(
                f"Check that {project_version_folder} is present in {os.getcwd()} and non-empty.")

        # Check that the required source files exists
        if not glob.glob(f"{project_version_folder}/{project.source}"):
            raise EnvironmentError(f"Check that {project.source} is present in {project_version_folder}.")

        # Check that the required executable exists
        if not os.path.isfile(f"{project_version_folder}/{project.executable_location}"):
            raise EnvironmentError(
                f"Check that {self.instance_name} has been compiled and {project.executable_location} is "
                f"present.")

        if not os.path.isdir(project.input_dir) or not os.listdir(project.input_dir):
            raise EnvironmentError(f"Check that {project.input_dir} exists and is non-empty.")

        # If the output directory doesn't exist, create it.
        if not os.path.isdir(project.output_dir):
            os.makedirs(os.path.join(os.getcwd(), project.output_dir))

        # TODO(JLJ): Check that the necessary versions have been compiled with the AFL compiler.
