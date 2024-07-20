from abc import ABC, abstractmethod
from typing import TYPE_CHECKING, Optional, List
from pathlib import Path

if TYPE_CHECKING:
    from evaluation_lib.project import Project


def change_execution_command_location(command: str, location: Path) -> str:
    result = "./" + str(location) + '/' + command
    return result


class ProjectInstance(ABC):
    def __init__(self, instance_name: str, project: 'Project', skip_initialization_check: bool = False) -> None:
        self.instance_name: str = instance_name
        self.project: 'Project' = project
        if not skip_initialization_check:
            self.check_setup()

    def get_instance_location(self) -> Path:
        return Path(f"{self.project.project_name}/{self.instance_name}")

    def get_execution_command(self, filename: Optional[str] = None) -> str:
        return change_execution_command_location(self.project.get_execution_command(filename),
                                                 self.get_instance_location())

    def get_coverage_execution_command(self, filename: Optional[str] = None) -> str:
        return change_execution_command_location(self.project.get_coverage_execution_command(filename),
                                                 self.get_instance_location())

    @abstractmethod
    def check_setup(self):
        pass
