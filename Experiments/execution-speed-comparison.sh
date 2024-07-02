#!/bin/bash

set -e
set -u
set -x

results_dir="${1:-"$DREDD_EVAL/Experiments/results"}/execution_speed"
if [ ! -d "$results_dir" ]; then
  mkdir -p "$results_dir"
fi

# TODO(JLJ): Check test dirs exist.

pushd "$DREDD_EVAL"/Experiments

for opt_level in "O0" "O1" "O2" "O3"; do
  for extension in "" "-instrumented"; do
    /usr/bin/time -p -a -o "$results_dir/spirv-tools$extension-$opt_level.txt" bash -c "for input_file in \"$DREDD_EVAL\"/third_party/spirv-tests/binary/*; do \"./spirv-tools$extension-$opt_level/build/tools/spirv-opt\" \$input_file -o \"-\" > /dev/null 2>&1; done" || true

    /usr/bin/time -p -a -o "$results_dir/tint$extension-$opt_level.txt" bash -c "for input_file in \"$DREDD_EVAL\"/third_party/wgsl-tests/*; do \"./tint$extension-$opt_level/out/Debug/tint\" \$input_file > /dev/null 2>&1; done" || true

    # TODO(JLJ): Run on tint and spirv executables
    executables="$( ls ./spirv-tools-*/build/tools/spirv-opt ./tint*/out/Debug/tint)"
    echo "readelf: " >> "$results_dir/binutils$extension-$opt_level.txt"
    /usr/bin/time -p -a -o "$results_dir/binutils$extension-$opt_level.txt" "for binary in $executables; do ./binutils$extension-$opt_level/objdir/binutils/readelf -a \$binary; done"

    echo "objdump: " >> "$results_dir/binutils$extension-$opt_level.txt"
    /usr/bin/time -p -a -o "$results_dir/binutils$extension-$opt_level.txt" "for binary in $executables; do ./binutils$extension-$opt_level/objdir/binutils/objdump -e \$binary; done"

    echo "strings: " >> "$results_dir/binutils$extension-$opt_level.txt"
    /usr/bin/time -p -a -o "$results_dir/binutils$extension-$opt_level.txt" "for binary in $executables; do ./binutils$extension-$opt_level/objdir/binutils/strings -e \$binary; done"

    echo "nm: " >> "$results_dir/binutils$extension-$opt_level.txt"
    /usr/bin/time -p -a -o "$results_dir/binutils$extension-$opt_level.txt" "for binary in $executables; do ./binutils$extension-$opt_level/objdir/binutils/nm -C \$binary; done"

    echo "size: " >> "$results_dir/binutils$extension-$opt_level.txt"
    /usr/bin/time -p -a -o "$results_dir/binutils$extension-$opt_level.txt" "for binary in $executables; do ./binutils$extension-$opt_level/objdir/binutils/size \$binary; done"

    object_files="$(find . -name "*.o")"

    echo "cxxfilt: " >> "$results_dir/binutils$extension-$opt_level.txt"
    /usr/bin/time -p -a -o "$results_dir/binutils$extension-$opt_level.txt" "for object_file in $object_files; do nm \$object_file | ./binutils$extension-$opt_level/objdir/binutils/cxxfilt; done"
  done
done

popd
