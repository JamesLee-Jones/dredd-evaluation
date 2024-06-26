#!/bin/bash

set -e
set -u
set -x

export CFLAGS='-Wno-error'
export CONFIG_FLAGS='--disable-gdb --disable-ld --disable-shared --quiet'

pushd "$DREDD_EVAL"/Evaluation
mkdir -p binutils
pushd binutils
  mkdir -p single-testcase
  echo ' ' > single-testcase/root.txt

  "$DREDD_EVAL"/setup_scripts/get-binutils.sh

  if [ ! -d "./binutils-gcov" ]; then
    cp -r ./binutils ./binutils-gcov
  fi
  if [ ! -d "./binutils-instrumented" ]; then
    cp -r ./binutils ./binutils-instrumented
  fi
  if [ ! -d "./binutils-mutant-tracking" ]; then
    cp -r ./binutils ./binutils-mutant-tracking
  fi

  # Compile with coverage
  pushd binutils-gcov/objdir
	  "$AFL_COV"/afl-cov-build.sh -c "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
  popd  # binutils-gcov/objdir

    # Compile with coverage
  pushd binutils-mutant-tracking
    pushd objdir
      "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
    popd

    "$DREDD"/dredd --only-track-mutant-coverage -p ./objdir/compile_commands.json --mutation-info-file ../mutant_tracking_info_file.json  $($DREDD_EVAL/utils/list-source-files.sh $DREDD_EVAL/test-programs binutils | sed -E 's|([^ ]+)|./\1 |g')

    pushd objdir
      "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
    popd  # objdir
  popd  # binutils-mutant-tracking

  source "$DREDD_EVAL"/utils/set-afl-build-vars.sh

  # Compile the base version for fuzzing
  pushd binutils/objdir
    "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
  popd

  pushd binutils-instrumented
    pushd objdir
      "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
    popd

    "$DREDD"/dredd --semantics-preserving-coverage-instrumentation -p ./objdir/compile_commands.json --mutation-info-file ../mutation_info_file.json  $($DREDD_EVAL/utils/list-source-files.sh $DREDD_EVAL/test-programs binutils | sed -E 's|([^ ]+)|./\1 |g')

    pushd objdir
      "$DREDD_EVAL"/setup_scripts/compile-binutils.sh
    popd  # objdir
  popd  # binutils-instrumented

popd  # binutils
popd  # $DREDD_EVAL/Evaluation

