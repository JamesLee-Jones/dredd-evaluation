import glob
import os
from pathlib import Path
from typing import List, Tuple, Dict, Any

results_dir = Path(f"{os.environ['DREDD_EVAL']}/Experiments/results")
os.chdir(results_dir)

evaluation_projects = ["binutils", "spirv-tools", "tint"]


def sort_key(s: Tuple[str, Any]):
    filename = Path(s[0]).stem
    optimization_level = int(filename.split("-O")[-1])
    is_instrumented = 1 if "instrumented" in filename else 0
    return optimization_level, is_instrumented


def sort_result(result: List[Tuple[str, Any]]):
    return sorted(result, key=sort_key)


def process_if_count(project_name: str) -> List[Tuple[str, List]]:
    result = []

    if_count_dir = Path("if_count")
    result_files = [f for f in os.listdir(if_count_dir) if f.startswith(project_name)]
    for result_file in result_files:
        result_file_path = if_count_dir / result_file

        with open(result_file_path, "r") as f:
            file_result = (result_file, [])
            for line in f.readlines():
                if line.startswith("[ifCount]"):
                    try:
                        line = line.replace("[ifCount] ", "")
                        source_file, if_count_string = line.split(":", maxsplit=1)
                        if_count = int(if_count_string.split()[0])
                        file_result[1].append({'source_file': source_file, 'if_count': if_count})
                    except Exception:
                        # Because binutils was compiled with multiple cores, there are places where the
                        # output overlaps from each core and thus cant be parsed. Since only 6 files are
                        # modified, this is feasible to do by hand.
                        print(f"Couldn't get count for file {result_file_path}.")
            result.append(file_result)

    return sort_result(result)


def process_binary_size(project_name: str) -> List[Tuple[str, List]]:
    result = []

    binary_size_dir = Path("binary_size")
    result_files = [f for f in os.listdir(binary_size_dir) if f.startswith(project_name)]
    for result_file in result_files:
        result_file_path = binary_size_dir / result_file
        with open(result_file_path, "r") as f:
            file_result = (result_file, [])
            for line in f.readlines():
                source_file, size_string = line.split(':', maxsplit=1)
                size = int(size_string.split()[0])
                file_result[1].append({'source_file': source_file, 'binary_size': size})
            result.append(file_result)

    return sort_result(result)


def binary_size_results_to_string(results: List[Tuple[str, List]]) -> str:
    result = "        \\multicolumn{2}{|c|}{binary size} & "

    index = 0
    index_max = len(results[0][1])
    while index < index_max:
        for project in results:
            source_files = project[1]
            result += str(source_files[index]['binary_size']) + " & "
        result = result[:-3]
        index += 1
        result += "\\\\\n"
    return result


def process_compile_time(project_name: str) -> List[Tuple[str, Dict]]:
    result = {}

    compile_times_dirs_pattern = "run*/compile_time"
    compile_time_dirs = glob.glob(compile_times_dirs_pattern)
    result_file_paths = [
        d + '/' + f
        for d in compile_time_dirs
        for f in os.listdir(d) if f.startswith(project_name)
    ]

    for result_file_path in result_file_paths:
        result_file_name = os.path.basename(result_file_path)
        run = result_file_path.split("/")[0]
        assert run.startswith("run")
        with open(result_file_path, "r") as f:
            if result_file_name not in result:
                result[result_file_name] = {}
            result[result_file_name][run] = {}
            for line in f.readlines():
                mode, time = line.split(" ", maxsplit=1)
                result[result_file_name][run][mode] = float(time)

    return sort_result([(k, v) for k, v in result.items()])


def main():
    for eval_project in evaluation_projects:
        print("""\\begin{table}[H]
    \\centering
    \\begin{tabular}{|c|c|c|c|c|c|c|c|c|c|}
        \\hline
        \\multicolumn{2}{|c|}{} & \\multicolumn{8}{c|}{tint}\\\\
        \\cline{3-10}
        \\multicolumn{2}{|c|}{} & \\multicolumn{2}{c|}{O0} & \\multicolumn{2}{|c|}{O1} & \\multicolumn{2}{c|}{O2} & \\multicolumn{2}{c|}{O3}\\\\
        \\cline{3-10}
        \\multicolumn{2}{|c|}{} & base & Dredd & base & Dredd & base & Dredd & base & Dredd \\\\
        \\hline""")
        # print(process_if_count(eval_project))
        print(binary_size_results_to_string(process_binary_size(eval_project)))
        # print(process_compile_time(eval_project))
        print("""    \\end{tabular}
    \\caption{}
    \\label{}
\\end{table}""")


if __name__ == '__main__':
    main()
