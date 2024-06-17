from abc import abstractmethod
from typing import TYPE_CHECKING
from evaluation_lib.project_instance import ProjectInstance

if TYPE_CHECKING:
    from project import Project


class ProjectCoverageInstance(ProjectInstance):
    def __init__(self, instance_name: str, project: 'Project'):
        super().__init__(instance_name, project)

    @abstractmethod
    def calculate_coverage(self, hide_output: bool = True):
        pass
