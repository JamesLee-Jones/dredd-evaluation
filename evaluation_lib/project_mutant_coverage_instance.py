import subprocess
import os

from typing import Set

from evaluation_lib.mutation_tree import MutationTree
from evaluation_lib.project import Project
from evaluation_lib.project_coverage_instance import ProjectCoverageInstance


class ProjectMutantCoverageInstance(ProjectCoverageInstance):
    def __init__(self, project: Project):
        gcov_instance_name = f"{project.project_name}-mutant-tracking"
        super().__init__(gcov_instance_name, project)

    def calculate_coverage(self, hide_output: bool = True):
        # TODO(JLJ): Move the knowledge of the location of the mutation files to a config file.
        with open(os.path.join(self.project.project_name, "mutant_info_file"), "r") as binary_input:
            mutation_tree = MutationTree(binary_input)
        with open(os.path.join(self.project.project_name, "mutant_tracking_info_file"), "r") as binary_input:
            mutation_tree_for_coverage_tracking = MutationTree(binary_input)

        assert mutation_tree.mutation_id_to_node_id == mutation_tree_for_coverage_tracking.mutation_id_to_node_id
        assert mutation_tree.parent_map == mutation_tree_for_coverage_tracking.parent_map
        assert mutation_tree.num_nodes == mutation_tree_for_coverage_tracking.num_nodes
        assert mutation_tree.num_mutations == mutation_tree_for_coverage_tracking.num_mutations

        killed_mutants: Set[int] = set()
        unkilled_mutants: Set[int] = set(range(0, mutation_tree.num_mutations))

        # Get all fuzzer generated tests.
        tests = []
        for folder in os.listdir(self.project.output_dir):
            if folder.startswith("Fuzzer"):
                tests += os.listdir(os.path.join(folder, "queue"))

        tests.sort()

        raise NotImplementedError
