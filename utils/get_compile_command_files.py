import argparse
import json
import os.path
from pathlib import Path


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument("compilation_database",
                        help="",  # TODO(JLJ): Add help.
                        type=Path)
    parser.add_argument("--ignore-tests",
                        action="store_true",
                        dest="ignore_tests")
    parser.add_argument("--ignore",
                        nargs="+",
                        type=Path)
    parser.add_argument("base_dir",
                        type=Path)
    parser.add_argument("extensions",
                        nargs="*")
    args = parser.parse_args()

    with open(args.compilation_database) as json_file:
        compilation_database = json.load(json_file)

    files = []

    for entry in compilation_database:
        file = entry['file']
        if args.ignore_tests and "_test" in file:
            continue

        if file.startswith(os.path.abspath(args.base_dir)) and file.endswith(tuple(args.extensions)):
            files.append(file)

    if args.ignore:
        for ignore_file in args.ignore:
            files.remove(os.path.abspath(ignore_file))

    print(*set(files))


if __name__ == "__main__":
    main()
