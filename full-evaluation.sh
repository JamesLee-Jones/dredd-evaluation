#!/bin/bash

set -e
set -u
set -x

CPUS=7
# DURATION_HOURS=8  # In hours
# DURATION_SECONDS=`expr 3600 \* $DURATION_HOURS`
DURATION_SECONDS=60

while ISF=' ' read -r project_name source executable_location options; do
  executable_flags=""
  input_type=""

  if [[ "$options" == *"@@"* ]]; then
    input_type="@@"
  fi

  extension=$(echo "$options" | grep -o '\.[^.]\+')
  executable_flags=$(getopt "aCd" $options)
  executable_flags="${executable_flags%%--*}"

  evaluation_args="$DURATION_SECONDS $executable_location $executable_flags $input_type $extension $CPUS"

  pushd "$DREDD_EVAL/Evaluation/$project_name"
    $DREDD_EVAL/evaluate.sh "$project_name" "$DURATION_SECONDS" "$executable_location" "$executable_flags" "$input_type" "$extension" "$CPUS"
    $DREDD_EVAL/evaluate.sh "$project_name-instrumented" "$DURATION_SECONDS" "$executable_location" "$executable_flags" "$input_type" "$extension" "$CPUS"
  popd

done < "$1"

