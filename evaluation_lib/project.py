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
    duration: str
    input_dir: Path
    output_dir: Path
    executable_location: Path
    fuzz_instances: List[project_fuzz_instance.ProjectFuzzInstance] = field(default_factory=list)
    coverage_instances: List[project_coverage_instance.ProjectCoverageInstance] = field(default_factory=list)
    executable_flags: Optional[str] = None
    input_type: Optional[str] = None
    extension: Optional[str] = None

    def add_fuzz_instance(self, instance_name: str, skip_initialization_check: bool = False):
        self.fuzz_instances.append(project_fuzz_instance.ProjectFuzzInstance(instance_name, self, skip_initialization_check))

    def add_coverage_instance(self, coverage_class):
        self.coverage_instances.append(coverage_class(self))

    def fuzz(self, threads: int = 1):
        assert len(self.fuzz_instances) == 2
        for fuzz_instance in self.fuzz_instances:
            fuzz_instance.fuzz(threads)

    def calculate_coverage(self, hide_output: bool = True):
        for coverage_instance in self.coverage_instances:
            coverage_instance.calculate_coverage(hide_output)

    def get_execution_command(self) -> str:
        result = f"{self.executable_location}"
        if self.executable_flags is not None:
            result += f" {self.executable_flags} "
        if self.input_type is not None:
            result += f" {self.input_type}"
        return result
