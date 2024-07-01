#!/bin/bash

set -e
set -u
set -x

results_dir=${1:-"$DREDD_EVAL/Experiments/results/binary_size"}
if [ ! -d "$results_dir" ]; then
  mkdir -p "$results_dir"
fi

pushd "$DREDD_EVAL"/Experiments

for opt_level in "O0" "O1" "O2" "O3"; do
  for extension in "" "-instrumented"; do
    stat -c "%n: %s bytes" "./spirv-tools$extension-$opt_level/build/tools/spirv-opt" >> "$results_dir/spirv-tools$extension-$opt_level.txt"
    stat -c "%n: %s bytes" "./tint$extension-$opt_level/out/Debug/tint" >> "$results_dir/tint$extension-$opt_level.txt"

    for binutils_executable in "readelf" "objdump" "strings" "nm-new" "cxxfilt" "size"; do
      stat -c "%n: %s bytes" "./binutils$extension-$opt_level/objdir/binutils/$binutils_executable" >> "$results_dir/binutils$extension-$opt_level.txt"
    done
  done
done

popd
