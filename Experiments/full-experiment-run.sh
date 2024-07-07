#!/bin/bash
set -u
set -x
set -e

results_dir=${1:-"$DREDD_EVAL/Experiments/results/"}
NUM_RUNS=3

pushd "$DREDD_EVAL"/Experiments
  ./setup.sh
  ./cleanup.sh

  # These are deterministic so only do once to save time.
  ./if-count-comparison.sh "$results_dir"
  ./binary-size-comparison.sh "$results_dir"
  ./cleanup.sh

  for ((i=1; i<=NUM_RUNS; i++)); do
    run_results_dir="$results_dir/run$i"
    ./compile-time-comparison.sh "$run_results_dir"

    ./execution-speed-comparison.sh "$run_results_dir"

    ./cleanup.sh
  done
popd
