from dataclasses import dataclass, field
from pathlib import Path
from typing import List

from evaluation_lib.project import Project


@dataclass
class EvaluationSetup:
    evaluation_dir: Path = "./Evaluation"
    processes: int = 7
    sanitizers: bool = True
    projects: List[Project] = field(default_factory=list)
