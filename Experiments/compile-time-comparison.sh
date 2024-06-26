#!/bin/bash

set -e
set -u
set -x

export CC=clang
export CXX=clang++

libCount="$DREDD_EVAL/utils/CountIf/build/libCountIf.so"
results_dir=$DREDD_EVAL/Experiments/results/compile_time

if [ ! -d "$results_dir" ]; then
  mkdir -p "$results_dir"
fi

pushd "$DREDD_EVAL"/Experiments

"$DREDD_EVAL/setup_scripts/get-spirv-tools.sh" "spirv-tools"
for opt_level in "O0" "O1" "O2" "O3"; do
  export CXX_FLAGS="-Wno-error=c++20-extensions -Wno-error=undef -Wno-error=unused-parameter -Wno-error=tautological-constant-out-of-range-compare -Wno-error=sign-compare -Wno-error=unused-variable -$opt_level -fpass-plugin=$libCount"

  cp -r "spirv-tools" "spirv-tools-$opt_level"
  pushd "spirv-tools-$opt_level"/build
    "$DREDD_EVAL/setup_scripts/compile-spirv-tools.sh" "$results_dir/spirv-tools-$opt_level-compile-time.txt"
  popd

  cp -r "spirv-tools" "spirv-tools-instrumented-$opt_level"
  pushd "spirv-tools-instrumented-$opt_level"
    pushd build
      "$DREDD_EVAL/setup_scripts/compile-spirv-tools.sh"
    popd

    "$DREDD"/dredd --semantics-preserving-coverage-instrumentation -p ./build/compile_commands.json $(python "$DREDD_EVAL"/utils/get_compile_command_files.py ./build/compile_commands.json ./source/opt .cpp .h --ignore ./source/opt/optimizer.cpp)
    # TODO(JLJ): Check it is fine to do this and no files are left over elsewhere
    rm -rf build/*

    pushd build
      "$DREDD_EVAL/setup_scripts/compile-spirv-tools.sh" "$results_dir/spirv-tools-instrumented-$opt_level-compile-time.txt"
    popd
  popd

  unset CXX_FLAGS
done
rm -rf "spirv-tools"

"$DREDD_EVAL/setup_scripts/get-tint.sh" "tint"
for opt_level in "O0" "O1" "O2" "O3"; do
  export CXX_FLAGS="-Wno-c++20-extensions -fbracket-depth=1024 -$opt_level -fpass-plugin=$libCount"

  cp -r "tint" "tint-$opt_level"
  pushd "tint-$opt_level"/out/Debug
    "$DREDD_EVAL/setup_scripts/compile-tint.sh" "$results_dir/tint-$opt_level-compile-time.txt"
  popd


  cp -r "tint" "tint-instrumented-$opt_level"
  pushd "tint-instrumented-$opt_level"
    pushd out/Debug
      "$DREDD_EVAL/setup_scripts/compile-tint.sh"
    popd

    "$DREDD"/dredd --semantics-preserving-coverage-instrumentation -p ./out/Debug/compile_commands.json --mutation-info-file ../mutation_info_file.json $(python $DREDD_EVAL/utils/get_compile_command_files.py --ignore-tests ./out/Debug/compile_commands.json ./src .cc .c .h)
    # TODO(JLJ): Check it is fine to do this and no files are left over elsewhere
    rm -rf out/Debug/*

    pushd out/Debug
      "$DREDD_EVAL/setup_scripts/compile-tint.sh" "$results_dir/tint-instrumented-$opt_level-compile-time.txt"
    popd

  popd

  unset CXX_FLAGS
done
rm -rf "tint"

"$DREDD_EVAL/setup_scripts/get-binutils.sh" "binutils"
for opt_level in "O0" "O1" "O2" "O3"; do
  export CFLAGS="-Wno-error -$opt_level -fpass-plugin=$libCount"
  export CONFIG_FLAGS='--disable-gdb --disable-ld --disable-shared --quiet'

  cp -r "binutils" "binutils-$opt_level"
  pushd "binutils-$opt_level"/objdir
    "$DREDD_EVAL/setup_scripts/compile-binutils.sh"
  popd

  cp -r "binutils" "binutils-instrumented-$opt_level"
  pushd "binutils-instrumented-$opt_level"
    pushd objdir
      "$DREDD_EVAL/setup_scripts/compile-binutils.sh" "$results_dir/binutils-instrumented-$opt_level-compile-time.txt"
    popd

    "$DREDD"/dredd --semantics-preserving-coverage-instrumentation -p ../compile_commands.json --mutation-info-file ../mutation_info_file.json  $($DREDD_EVAL/utils/list-source-files.sh $DREDD_EVAL/test-programs binutils | sed -E 's|([^ ]+)|./\1 |g')
    # TODO(JLJ): Check it is fine to do this and no files are left over elsewhere
    rm -rf objdir/*

    pushd objdir
      "$DREDD_EVAL/setup_scripts/compile-binutils.sh" "$results_dir/binutils-instrumented-$opt_level-compile-time.txt"
    popd
  popd

  unset CFLAGS
  unset CONFIG_FLAGS
done
rm -rf "binutils"

popd  # $DREDD_EVAL/Experiments
