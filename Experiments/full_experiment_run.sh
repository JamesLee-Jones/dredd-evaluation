#!/bin/bash

results_dir=${1:-"DREDD_EVAL/Experiments/results/compile_time"}
NUM_RUNS=3

pushd "$DREDD_EVAL"/Experiments
  for ((i=1; i<$NUM_RUNS; i++)); do
    run_results_dir="$results_dir-run$i"
    ./compile-time-comparison.sh "$run_results_dir"

    ./binary-size-comparison.sh "$run_results_dir"

    ./execution-speed-comparison.sh "$run_results_dir"
  done
popd
