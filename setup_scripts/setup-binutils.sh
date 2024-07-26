#!/bin/bash

set -e
set -u
set -x

export CFLAGS='-O3 -Wno-error'
export CONFIG_FLAGS='--disable-gdb --disable-gdb-server --disable-gdbsupport --disable-libdecnumber --disable-readline --disable-sim --disable-libbacktrace --disable-gas --disable-ld --disable-shared --quiet --enable-targets=all'

pushd "$DREDD_EVAL"/Evaluation
mkdir -p binutils
pushd binutils
  mkdir -p single-testcase
  echo ' ' > single-testcase/root.txt

  if [ ! -d "./binutils" ]; then
    "$DREDD_EVAL"/setup_scripts/get-binutils.sh
  fi

  export CC=clang
  export CXX=clang++

  if [ ! -d "./binutils-gcov" ]; then
    cp -r ./binutils ./binutils-gcov

    # Compile with coverage
    pushd binutils-gcov/objdir
      rm -rf ./*
      "$AFL_COV"/afl-cov-build.sh -c "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
    popd  # binutils-gcov/objdir
  fi

  if [ ! -d "./binutils-mutant-tracking" ]; then
    cp -r ./binutils ./binutils-mutant-tracking

    # Compile with coverage
    pushd binutils-mutant-tracking
      pushd objdir
        rm -rf ./*
        "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
      popd

      "$DREDD"/dredd --only-track-mutant-coverage -p ./objdir/compile_commands.json --mutation-info-file ../mutant_tracking_info_file.json $(python3 "$DREDD_EVAL/utils/get_project_source_files.py" "$DREDD_EVAL/evaluation_setup.yaml" binutils)

      pushd objdir
        "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
      popd  # objdir
    popd  # binutils-mutant-tracking
  fi


  source "$DREDD_EVAL"/utils/set-afl-build-vars.sh
  export CFLAGS="$CFLAGS -fsanitize=fuzzer"

  if [ ! -d "./binutils-instrumented" ]; then
    cp -r ./binutils ./binutils-instrumented

    pushd binutils-instrumented
      pushd objdir
        rm -rf ./*
        "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
      popd

      "$DREDD"/dredd --semantics-preserving-coverage-instrumentation -p ./objdir/compile_commands.json --mutation-info-file ../mutation_info_file.json $(python3 $DREDD_EVAL/utils/get_project_source_files.py $DREDD_EVAL/evaluation_setup.yaml binutils)
      git apply "$DREDD_EVAL/setup_scripts/binutils.patch"

      pushd objdir
        "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
      popd  # objdir
    popd  # binutils-instrumented
  fi

  # Compile the base version for fuzzing
  pushd binutils/objdir
     git apply "$DREDD_EVAL/setup_scripts/binutils.patch"
    "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
  popd


  export AFL_USE_UBSAN=1
  export AFL_USE_ASAN=1

  if [ ! -d "./binutils-sanitizers" ]; then
    cp -r ./binutils ./binutils-sanitizers

    # Compile the base version for fuzzing
    pushd binutils-sanitizers/objdir
      rm -rf ./*
      "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
    popd
  fi


  if [ ! -d "./binutils-instrumented-sanitizers" ]; then
    cp -r ./binutils-instrumented ./binutils-instrumented-sanitizers

    pushd binutils-instrumented-sanitizers/objdir
      rm -rf ./*
      "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
    popd  # binutils-instrumented-sanitizers/objdir
  fi

popd  # binutils
popd  # $DREDD_EVAL/Evaluation

