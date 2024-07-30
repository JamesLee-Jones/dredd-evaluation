import evaluation_lib.project_fuzz_instance as project_fuzz_instance
import evaluation_lib.project_coverage_instance as project_coverage_instance
from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional, List


def get_execution_command_helper(executable_location: Path, options: Optional[str], command_input: Optional[str] = None) -> str:
    result = str(executable_location)
    if options:
        if "@@" in options and command_input:
            options = options.replace("@@", command_input)

        result += " " + options
    elif command_input:
        result += " " + command_input

    result = result.replace('"', r'\"')

    return result


@dataclass
class Project:
    project_name: str
    source: Path
    fuzz_duration: str
    input_dir: Path
    output_dir: Path
    executable_location: Path
    coverage_executable_location: Path
    sanitizers: bool = True
    executable_options: Optional[str] = None
    coverage_executable_options: Optional[str] = None
    file_extension: Optional[str] = None
    fuzz_instances: List[project_fuzz_instance.ProjectFuzzInstance] = field(default_factory=list)
    coverage_instances: List[project_coverage_instance.ProjectCoverageInstance] = field(default_factory=list)

    def get_execution_command(self, command_input: Optional[str] = None) -> str:
        return get_execution_command_helper(self.executable_location, self.executable_options, command_input)

    def get_coverage_execution_command(self, command_input: Optional[str] = None) -> str:
        return get_execution_command_helper(self.coverage_executable_location, self.coverage_executable_options, command_input)

    def add_fuzz_instance(self, instance_name: str, skip_initialization_check: bool = False):
        self.fuzz_instances.append(
            project_fuzz_instance.ProjectFuzzInstance(instance_name, self, skip_initialization_check)
        )

    def add_coverage_instance(self, coverage_class):
        self.coverage_instances.append(coverage_class(self))

    def fuzz(self, threads: int = 7):
        assert len(self.fuzz_instances) == 2
        for fuzz_instance in self.fuzz_instances:
            fuzz_instance.fuzz(sanitizers=self.sanitizers, num_processes=threads)

    def calculate_coverage(self, hide_output: bool = True):
        for coverage_instance in self.coverage_instances:
            coverage_instance.calculate_coverage(hide_output)
