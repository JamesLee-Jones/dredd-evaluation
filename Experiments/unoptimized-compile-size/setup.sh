#!/bin/bash

set -e
set -u
set -x

#pushd CountIf
#  mkdir -p build
#  pushd build
#    export LLVM_DIR=/home/jlj/dev/llvm-project/build/bin
#    CXX=clang++ cmake -DLT_LLVM_INSTALL_DIR=$LLVM_DIR ..
#    make
#  popd
#popd

 

if [ ! -d "binutils-O0" ]; then
        git clone git://sourceware.org/git/binutils-gdb.git ./binutils-O0
fi

if [ ! -d "binutils-O1" ]; then
  cp -r binutils-O0 binutils-O1
fi
if [ ! -d "binutils-O2" ]; then
  cp -r binutils-O0 binutils-O2
fi
if [ ! -d "binutils-O3" ]; then
  cp -r binutils-O0 binutils-O3
fi

export libCount="/home/jlj/dev/dredd-evalutation/utils/CountIf/build/libCountIf.so"

pushd binutils-O0
  mkdir -p objdir

  # Compile the base version to get compile_commands.json
  pushd objdir
    #-Xclang -disable-O0-optnone
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O0 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O0 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS /usr/bin/time -o ../../binutils-O0.txt bear -- make -j $(nproc) 2>> ../../binutils-O0.txt
    #CC=clang CXX=clang++ CFLAGS='-Wno-error -O0 -fpass-plugin=../../CountIf/build/libCountIf.so' CXXFLAGS=$CFLAGS /usr/bin/time -o ../../binutils-O0.txt bear -- make -j $(nproc) #2>> ../../binutils-O0.txt
    mv compile_commands.json ../compile_commands.json
  popd

  if [ ! -d "../binutils-instrumented-O0" ]; then
          cp -r ../binutils-O0 ../binutils-instrumented-O0
  fi
popd

pushd binutils-instrumented-O0
    /home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ./compile_commands.json ./binutils/cxxfilt.c ./binutils/nm.c ./binutils/objdump.c ./binutils/readelf.c ./binutils/size.c ./binutils/strings.c
    rm -rf objdir/*

  pushd objdir
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O0 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS ../configure --disable-gdb --quiet --disable-shared 
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O0 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS /usr/bin/time -o ../../binutils-instrumented-O1.txt make -j $(nproc)  2>> ../../binutils-instrumented-O0.txt
  popd
popd
pushd binutils-O1
  mkdir -p objdir

  # Compile the base version to get compile_commands.json
  pushd objdir
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O1 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O1 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS /usr/bin/time -o ../../binutils-O1.txt bear -- make -j $(nproc) 2>> ../../binutils-O1.txt

    mv compile_commands.json ../compile_commands.json
  popd

  if [ ! -d "../binutils-instrumented-O1" ]; then
          cp -r ../binutils-O1 ../binutils-instrumented-O1
  fi
popd

pushd binutils-instrumented-O1
    /home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ./compile_commands.json ./binutils/cxxfilt.c ./binutils/nm.c ./binutils/objdump.c ./binutils/readelf.c ./binutils/size.c ./binutils/strings.c
    rm -rf objdir/*

  pushd objdir
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O1 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O1 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS /usr/bin/time -o ../../binutils-instrumented-O1.txt make -j $(nproc) 2>> ../../binutils-instrumented-O1.txt
  popd
popd

pushd binutils-O2
  mkdir -p objdir

  # Compile the base version to get compile_commands.json
  pushd objdir
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O2 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O2 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS /usr/bin/time -o ../../binutils-O2.txt bear -- make -j $(nproc) 2>> ../../binutils-O2.txt
    mv compile_commands.json ../compile_commands.json
  popd

  if [ ! -d "../binutils-instrumented-O2" ]; then
          cp -r ../binutils-O2 ../binutils-instrumented-O2
  fi
popd

pushd binutils-instrumented-O2
    /home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ./compile_commands.json ./binutils/cxxfilt.c ./binutils/nm.c ./binutils/objdump.c ./binutils/readelf.c ./binutils/size.c ./binutils/strings.c
    rm -rf objdir/*

  pushd objdir
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O2 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O2 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS /usr/bin/time -o ../../binutils-instrumented-O2.txt make -j $(nproc) CFLAGS='-Wno-error -O2' 2>> ../../binutils-instrumented-O2.txt
  popd
popd

pushd binutils-O3
  mkdir -p objdir

  # Compile the base version to get compile_commands.json
  pushd objdir
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O3 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O3 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS /usr/bin/time -o ../../binutils-O3.txt bear -- make -j $(nproc) 2>> ../../binutils-O3.txt
    mv compile_commands.json ../compile_commands.json
  popd

  if [ ! -d "../binutils-instrumented-O3" ]; then
          cp -r ../binutils-O3 ../binutils-instrumented-O3
  fi
popd

pushd binutils-instrumented-O3
    /home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ./compile_commands.json ./binutils/cxxfilt.c ./binutils/nm.c ./binutils/objdump.c ./binutils/readelf.c ./binutils/size.c ./binutils/strings.c
    rm -rf objdir/*

  pushd objdir
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O3 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ CFLAGS="-Wno-error -O3 -fpass-plugin=$libCount" CXXFLAGS=$CFLAGS /usr/bin/time -o ../../binutils-instrumented-O3.txt make -j $(nproc) 2>> ../../binutils-instrumented-O3.txt
  popd
popd

