#!/bin/bash
set -e
set -x
set -u

export CC=clang
export CXX=clang++

pushd "$DREDD_EVAL"/Experiments

"$DREDD_EVAL/setup_scripts/get-spirv-tools.sh" "spirv-tools"
for opt_level in "O0" "O1" "O2" "O3"; do
  export CXX_FLAGS="-Wno-error=c++20-extensions -Wno-error=undef -Wno-error=unused-parameter -Wno-error=tautological-constant-out-of-range-compare -Wno-error=sign-compare -Wno-error=unused-variable -$opt_level"
  export CC_FLAGS=$CXX_FLAGS

  if [ ! -d "spirv-tools-$opt_level" ]; then
    cp -r "spirv-tools" "spirv-tools-$opt_level"
  fi

  if [ ! -d "spirv-tools-instrumented-$opt_level" ]; then
    cp -r "spirv-tools" "spirv-tools-instrumented-$opt_level"
    pushd "spirv-tools-instrumented-$opt_level"
      pushd build
        "$DREDD_EVAL/setup_scripts/compile-spirv-tools.sh"
      popd

      "$DREDD"/dredd --semantics-preserving-coverage-instrumentation -p ./build/compile_commands.json $(python3 "$DREDD_EVAL"/utils/get_compile_command_files.py ./build/compile_commands.json ./source/opt .cpp .h --ignore ./source/opt/optimizer.cpp)
      # TODO(JLJ): Check it is fine to do this and no files are left over elsewhere
      rm -rf build/*
    popd
  fi

  unset CXX_FLAGS
  unset CC_FLAGS
done
rm -rf "spirv-tools"

"$DREDD_EVAL/setup_scripts/get-tint.sh" "tint"
for opt_level in "O0" "O1" "O2" "O3"; do
  export CXX_FLAGS="-Wno-c++20-extensions -fbracket-depth=1024 -$opt_level"
  export CC_FLAGS=$CXX_FLAGS

  if [ ! -d "tint-$opt_level" ]; then
    cp -r "tint" "tint-$opt_level"
  fi

  if [ ! -d "tint-instrumented-$opt_level" ]; then
    cp -r "tint" "tint-instrumented-$opt_level"
    pushd "tint-instrumented-$opt_level"
      pushd out/Debug
        "$DREDD_EVAL/setup_scripts/compile-tint.sh"
      popd

      "$DREDD"/dredd --semantics-preserving-coverage-instrumentation -p ./out/Debug/compile_commands.json --mutation-info-file ../mutation_info_file.json $(python3 $DREDD_EVAL/utils/get_compile_command_files.py --ignore-tests ./out/Debug/compile_commands.json ./src .cc .c .h --ignore ./src/tint/lang/wgsl/reader/parser/parser.cc)
      # TODO(JLJ): Check it is fine to do this and no files are left over elsewhere
      rm -rf out/Debug/*
    popd
  fi

  unset CXX_FLAGS
  unset CC_FLAGS
done
rm -rf "tint"

"$DREDD_EVAL/setup_scripts/get-binutils.sh" "binutils"
for opt_level in "O0" "O1" "O2" "O3"; do
  export CFLAGS="-Wno-error -$opt_level"
  export CONFIG_FLAGS='--disable-gdb --disable-ld --disable-shared --quiet'

  if [ ! -d "binutils-$opt_level" ]; then
    cp -r "binutils" "binutils-$opt_level"
  fi

  if [ ! -d "binutils-instrumented-$opt_level" ]; then
    cp -r "binutils" "binutils-instrumented-$opt_level"
    pushd "binutils-instrumented-$opt_level"
      pushd objdir
        "$DREDD_EVAL/setup_scripts/compile-binutils.sh"
      popd

      "$DREDD"/dredd --semantics-preserving-coverage-instrumentation -p ../compile_commands.json --mutation-info-file ../mutation_info_file.json  $($DREDD_EVAL/utils/list-source-files.sh $DREDD_EVAL/test-programs binutils | sed -E 's|([^ ]+)|./\1 |g')
      # TODO(JLJ): Check it is fine to do this and no files are left over elsewhere
      rm -rf objdir/*
    popd
  fi

  unset CFLAGS
  unset CONFIG_FLAGS
done
rm -rf "binutils"

popd
