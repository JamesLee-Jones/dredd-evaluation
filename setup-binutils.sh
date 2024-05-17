#!/bin/bash

# --disable-gdb --disable-ld --disable-libiberty --disable-libsframe --disable-zlib --disable-gas --disable-gprof --disable-gprofng --disable-libbacktrace --disable-libdecnumber --disable-bfd --disable-readline --disable-libctf --disable-opcodes

set -e
set -u
set -x

mkdir -p binutils
pushd binutils
  mkdir -p results
  mkdir -p results/base
  mkdir -p results/instrumented
  mkdir -p testcase
  echo '' > testcase/root.txt

  if [ ! -d "binutils" ]; then
    git clone git://sourceware.org/git/binutils-gdb.git ./binutils
  fi

  pushd binutils
    mkdir -p objdir
    if [ ! -d "../binutils-gcov" ]; then
      cp -r ../binutils ../binutils-gcov
    fi
    if [ ! -d "../binutils-instrumented" ]; then
      cp -r ../binutils ../binutils-instrumented
    fi

    # Compile the base version for fuzzing
    pushd objdir
      CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-16 RANLIB=llvm-ranlib-16 AS=llvm-as-16 LD=afl-ld-lto ../configure --disable-gdb --disable-ld --quiet --disable-shared CFLAGS='-Wno-error'

      #Only use bear if compile_commands.json doesn't exist
      if [ -e "compile_commands.json" ]; then 
	CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-16 RANLIB=llvm-ranlib-16 AS=llvm-as-16 LD=afl-ld-lto make -j $(nproc) CFLAGS='-Wno-error'
      else
	CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-16 RANLIB=llvm-ranlib-16 AS=llvm-as-16 LD=afl-ld-lto bear -- make -j $(nproc) CFLAGS='-Wno-error'
      fi
    popd
  popd

  pushd binutils-gcov
    # Compile with coverage
    pushd objdir
		  $AFL_COV/afl-cov-build.sh -c ../configure --disable-gdb --disable-ld --quiet; make -j $(nproc)
    popd
  popd

  pushd binutils-instrumented
  $DREDD/dredd --semantics-preserving-coverage-instrumentation -p ../binutils/objdir/compile_commands.json $($DREDD_EVAL/utils/list-source-files.sh $DREDD_EVAL/test-programs binutils | sed -E 's|([^ ]+)|./\1 |g')
    pushd objdir
      CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-16 RANLIB=llvm-ranlib-16 AS=llvm-as-16 LD=afl-ld-lto ../configure --disable-gdb --disable-ld --quiet --disable-shared CFLAGS='-Wno-error'
      CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-16 RANLIB=llvm-ranlib-16 AS=llvm-as-16 LD=afl-ld-lto make CFLAGS='-Wno-error'
    popd
  popd
popd

