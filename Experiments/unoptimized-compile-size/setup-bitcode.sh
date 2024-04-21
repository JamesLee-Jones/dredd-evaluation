#!/bin/bash

set -e
set -u
set -x

 

if [ ! -d "binutils-bitcode-O0" ]; then
        git clone git://sourceware.org/git/binutils-gdb.git ./binutils-bitcode-O0
fi

cp -r binutils-bitcode-O0 binutils-bitcode-O1
cp -r binutils-bitcode-O0 binutils-bitcode-O2
cp -r binutils-bitcode-O0 binutils-bitcode-O3

pushd binutils-bitcode-O0
  mkdir -p objdir

  # Compile the base version to get compile_commands.json
  pushd objdir
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O0 -Xclang -disable-O0-optnone' ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O0 -Xclang -disable-O0-optnone' bear -- make -j $(nproc)
    mv compile_commands.json ../compile_commands.json
  popd

  if [ ! -d "../binutils-instrumented-O0" ]; then
          cp -r ../binutils-bitcode-O0 ../binutils-instrumented-bitcode-O0
  fi
popd

pushd binutils-instrumented-bitcode-O0
    /home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ./compile_commands.json ./binutils/cxxfilt.c ./binutils/nm.c ./binutils/objdump.c ./binutils/readelf.c ./binutils/size.c ./binutils/strings.c
    rm -rf objdir/*

  pushd objdir
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O0 -Xclang -disable-O0-optnone' ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O0 -Xclang -disable-O0-optnone' make -j $(nproc)
  popd
popd

pushd binutils-bitcode-O1
  mkdir -p objdir

  # Compile the base version to get compile_commands.json
  pushd objdir
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O1' ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O1' bear -- make -j $(nproc)
    mv compile_commands.json ../compile_commands.json
  popd

  if [ ! -d "../binutils-instrumented-bitcode-O1" ]; then
          cp -r ../binutils-bitcode-O1 ../binutils-instrumented-bitcode-O1
  fi
popd

pushd binutils-instrumented-bitcode-O1
    /home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ./compile_commands.json ./binutils/cxxfilt.c ./binutils/nm.c ./binutils/objdump.c ./binutils/readelf.c ./binutils/size.c ./binutils/strings.c
    rm -rf objdir/*

  pushd objdir
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O1' ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O1' make -j $(nproc)
  popd
popd

pushd binutils-bitcode-O2
  mkdir -p objdir

  # Compile the base version to get compile_commands.json
  pushd objdir
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O2' ../configure --disable-gdb --quiet --disable-shared CFLAGS='-Wno-error -O2'
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O2' bear -- make -j $(nproc)
    mv compile_commands.json ../compile_commands.json
  popd

  if [ ! -d "../binutils-instrumented-bitcode-O2" ]; then
          cp -r ../binutils-bitcode-O2 ../binutils-instrumented-bitcode-O2
  fi
popd

pushd binutils-instrumented-bitcode-O2
    /home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ./compile_commands.json ./binutils/cxxfilt.c ./binutils/nm.c ./binutils/objdump.c ./binutils/readelf.c ./binutils/size.c ./binutils/strings.c
    rm -rf objdir/*

  pushd objdir
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O2' ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O2' make -j $(nproc)
  popd
popd

pushd binutils-bitcode-O3
  mkdir -p objdir

  # Compile the base version to get compile_commands.json
  pushd objdir
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O3' ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O3' bear -- make -j $(nproc)
    mv compile_commands.json ../compile_commands.json
  popd

  if [ ! -d "../binutils-instrumented-bitcode-O3" ]; then
          cp -r ../binutils-bitcode-O3 ../binutils-instrumented-bitcode-O3
  fi
popd

pushd binutils-instrumented-bitcode-O3
    /home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ./compile_commands.json ./binutils/cxxfilt.c ./binutils/nm.c ./binutils/objdump.c ./binutils/readelf.c ./binutils/size.c ./binutils/strings.c
    rm -rf objdir/*

  pushd objdir
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O3' ../configure --disable-gdb --quiet --disable-shared
    CC=clang CXX=clang++ NM=llvm-nm AS=llvm-as AR=llvm-ar RANLIB=llvm-ranlib LDFLAGS='-flto -fuse-ld=gold -Wl,-plugin-opt=save-temps' CFLAGS='-flto -Wno-error -O3' make -j $(nproc)
  popd
popd

