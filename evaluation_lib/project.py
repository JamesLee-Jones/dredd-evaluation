import evaluation_lib.project_fuzz_instance as project_fuzz_instance
import evaluation_lib.project_coverage_instance as project_coverage_instance
from dataclasses import dataclass, field
from pathlib import Path
from typing import Optional, List


@dataclass
class Project:
    # TODO(JLJ): Move this class
    project_name: str
    source: Path
    fuzz_duration: str
    input_dir: Path
    output_dir: Path
    executable_location: Path
    executable_options: Optional[str] = None
    file_extension: Optional[str] = None
    fuzz_instances: List[project_fuzz_instance.ProjectFuzzInstance] = field(default_factory=list)
    coverage_instances: List[project_coverage_instance.ProjectCoverageInstance] = field(default_factory=list)

    def get_execution_command(self, command_input: Optional[str] = None) -> str:
        result = str(self.executable_location)
        if self.executable_options:
            options = self.executable_options
            if "@@" in self.executable_options and command_input:
                options = self.executable_options.replace("@@", command_input)

            result += " " + options
        elif command_input:
            result += " " + command_input

        result = result.replace('"', r'\"')

        return result

    def add_fuzz_instance(self, instance_name: str, skip_initialization_check: bool = False):
        self.fuzz_instances.append(
            project_fuzz_instance.ProjectFuzzInstance(instance_name, self, skip_initialization_check)
        )

    def add_coverage_instance(self, coverage_class):
        self.coverage_instances.append(coverage_class(self))

    def fuzz(self, threads: int = 1):
        assert len(self.fuzz_instances) == 2
        for fuzz_instance in self.fuzz_instances:
            fuzz_instance.fuzz(threads)

    def calculate_coverage(self, hide_output: bool = True):
        for coverage_instance in self.coverage_instances:
            coverage_instance.calculate_coverage(hide_output)
