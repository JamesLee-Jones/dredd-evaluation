#!/bin/bash

set -e
set -u
set -x

CPUS=7

while ISF=' ' read -r project_name source duration executable_location options; do
  executable_flags=""
  input_type=""

  if [[ "$options" == *"@@"* ]]; then
    input_type="@@"
  fi

  extension=$(echo "$options" | grep -o '\.[^.]\+')
  executable_flags=$(getopt "aCd" $options)
  executable_flags="${executable_flags%%--*}"

  input_dir="testcase"
  output_dir="results/$project_name/$(basename $executable_location)"

  fuzz_args=("$duration" "$executable_location" "$executable_flags" "$input_type" "$extension" "$input_dir" "$output_dir" "$CPUS")
  eval_args=("$executable_location" "$executable_flags" "$input_dir" "$output_dir")

  pushd "$DREDD_EVAL/Evaluation/$project_name"
    $DREDD_EVAL/fuzz.sh "$project_name" "${fuzz_args[@]}"
    $DREDD_EVAL/fuzz.sh "$project_name-instrumented" "${fuzz_args[@]}"    
 
    $DREDD_EVAL/calculate_coverage.sh "$project_name" "${eval_args[@]}"
    $DREDD_EVAL/calculate_coverage.sh "$project_name-instrumented" "${eval_args[@]}"  
  popd

done < "$1"

./backup-results.sh

