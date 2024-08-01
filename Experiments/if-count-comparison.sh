#!/bin/bash

set -e
set -u
set -x

export CC=clang
export CXX=clang++

libCount="$DREDD_EVAL/utils/CountIf/build/libCountIf.so"
results_dir="${1:-"$DREDD_EVAL/Experiments/results"}/if_count"

if [ ! -d "$results_dir" ]; then
  mkdir -p "$results_dir"
fi

pushd "$DREDD_EVAL"/Experiments

for opt_level in "O0" "O1" "O2" "O3"; do
  export CXXFLAGS="-Wno-error=c++20-extensions -Wno-error=undef -Wno-error=unused-parameter -Wno-error=tautological-constant-out-of-range-compare -Wno-error=sign-compare -Wno-error=unused-variable -Wno-error=bool-operation -Wno-error=float-conversion -$opt_level -fpass-plugin=$libCount"
  export CCFLAGS=$CXXFLAGS

  pushd "spirv-tools-$opt_level"/build
    COMPILE_FUZZER=OFF "$DREDD_EVAL/setup_scripts/compile-spirv-tools.sh" "$results_dir/spirv-tools-$opt_level.txt"
  popd

  pushd "spirv-tools-instrumented-$opt_level"/build
      COMPILE_FUZZER=OFF "$DREDD_EVAL/setup_scripts/compile-spirv-tools.sh" "$results_dir/spirv-tools-instrumented-$opt_level.txt"
  popd

  unset CXXFLAGS
  unset CCFLAGS
done

for opt_level in "O0" "O1" "O2" "O3"; do
  export CXXFLAGS="-Wno-c++20-extensions -fbracket-depth=1024 -$opt_level -fpass-plugin=$libCount"

  pushd "tint-$opt_level"/out/Debug
    COMPILE_FUZZER=OFF "$DREDD_EVAL/setup_scripts/compile-tint.sh" "$results_dir/tint-$opt_level.txt"
  popd


  pushd "tint-instrumented-$opt_level"/out/Debug
    COMPILE_FUZZER=OFF "$DREDD_EVAL/setup_scripts/compile-tint.sh" "$results_dir/tint-instrumented-$opt_level.txt"
  popd

  unset CXXFLAGS
done

for opt_level in "O0" "O1" "O2" "O3"; do
  export CFLAGS="-Wno-error -$opt_level -fpass-plugin=$libCount"
  export CONFIG_FLAGS='--disable-gdb --disable-ld --disable-shared --quiet'

  pushd "binutils-$opt_level"/objdir
    NPROC=1 "$DREDD_EVAL/setup_scripts/compile-binutils.sh" "$results_dir/binutils-$opt_level.txt"
  popd

  pushd "binutils-instrumented-$opt_level"/objdir
    NPROC=1 "$DREDD_EVAL/setup_scripts/compile-binutils.sh" "$results_dir/binutils-instrumented-$opt_level.txt"
  popd

  unset CFLAGS
  unset CONFIG_FLAGS
done

popd  # $DREDD_EVAL/Experiments
