#!/bin/bash
set -e
set -x
set -u

# Check if jq is installed
if ! command -v jq &> /dev/null
then
    echo "jq could not be found, please install it to proceed."
    exit 1
fi

# Check if at least one extension is provided
if [ "$#" -lt 3 ]; then
    echo "Usage: $0 path/to/compilation_database.json directory extension1 [extension2 ...]"
    exit 1
fi

compilation_database=$1
directory=$2
shift
shift
EXTENSIONS=("$@")

jq_filter=''
for ext in "${EXTENSIONS[@]}"; do
  if [[ -n $jq_filter ]]; then
    jq_filter+=" or "
  fi
  jq_filter+="endswith(\"$ext\")"
done
jq_filter=".[].file | select(startswith(\"$(readlink -f $directory)\")) | select($jq_filter)"

jq -r "$jq_filter" "$compilation_database"

