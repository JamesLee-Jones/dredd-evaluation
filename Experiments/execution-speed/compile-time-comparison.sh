#!/bin/bash

set -e
set -u
set -x

if [ ! -d "binutils-gdb" ]; then
        git clone git://sourceware.org/git/binutils-gdb.git
fi

pushd binutils-gdb
  mkdir -p objdir
  if [ ! -d "../binutils-gdb-instrumented" ]; then
          cp -r ../binutils-gdb ../binutils-gdb-instrumented
  fi

                # Compile the base version for fuzzing
  pushd objdir
    CC=clang ../configure --disable-gdb --quiet --disable-shared CFLAGS='-Wno-error -O3'

    #Only use bear if compile_commands.json doesn't exist
    if [ -e "compile_commands.json" ]; then 
      CC=clang /usr/bin/time -o ../../binutils-info.txt make -j $(nproc) CFLAGS='-Wno-error -O3'
    else
      CC=clang /usr/bin/time -o ../../binutils-info.txt bear -- make -j $(nproc) CFLAGS='-Wno-error -O3'
    fi
  popd
popd

pushd binutils-gdb-instrumented
  /home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ../binutils-gdb/objdir/compile_commands.json ./binutils/cxxfilt.c ./binutils/nm.c ./binutils/objdump.c ./binutils/readelf.c ./binutils/size.c ./binutils/strings.c

  pushd objdir
    CC=clang ../configure --disable-gdb --quiet --disable-shared CFLAGS='-Wno-error -O3'
    CC=clang /usr/bin/time -o ../../binutils-instrumented-info.txt make -j $(nproc) CFLAGS='-Wno-error -O3'
  popd
popd

