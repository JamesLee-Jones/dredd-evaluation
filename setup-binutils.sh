#!/bin/bash

set -e
set -u
set -x

CFLAGS='-Wno-error'
CONFIG_FLAGS='--disable-gdb --disable-ld --disable-shared --quiet'

mkdir -p binutils
pushd binutils
  mkdir -p results
  mkdir -p results/base
  mkdir -p results/instrumented
  mkdir -p testcase
  echo '' > testcase/root.txt

  if [ ! -d "./binutils" ]; then
    git clone git://sourceware.org/git/binutils-gdb.git ./binutils
    mkdir -p ./binutils/objdir
  fi
  if [ ! -d "./binutils-gcov" ]; then
    cp -r ./binutils ./binutils-gcov
  fi
  if [ ! -d "./binutils-instrumented" ]; then
    cp -r ./binutils ./binutils-instrumented
  fi

  # Compile with coverage
  pushd binutils-gcov/objdir
		  $AFL_COV/afl-cov-build.sh -c ../configure $CONFIG_FLAGS; make -j $(nproc)
  popd  # binutils-gcov/objdir


  . $DREDD_EVAL/utils/set-afl-build-vars.sh

  # Compile the base version for fuzzing
  pushd binutils/objdir
    ../configure $CONFIG_FLAGS CFLAGS=$CFLAGS

    #Only use bear if compile_commands.json doesn't exist
    if [ -e "compile_commands.json" ]; then 
      make -j $(nproc) CFLAGS=$CFLAGS
    else
      bear -- make -j $(nproc) CFLAGS=$CFLAGS
      mv compile_commands.json ../../compile_commands.json
    fi
  popd

  pushd binutils-instrumented
    $DREDD/dredd --semantics-preserving-coverage-instrumentation -p ../compile_commands.json $($DREDD_EVAL/utils/list-source-files.sh $DREDD_EVAL/test-programs binutils | sed -E 's|([^ ]+)|./\1 |g')

    pushd objdir
      ../configure $CONFIG_FLAGS CFLAGS=$CFLAGS
      make CFLAGS=$CFLAGS
    popd  # objdir
  popd  # binutils-instrumented

popd  # binutils

