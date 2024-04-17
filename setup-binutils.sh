#!/bin/bash

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
                        CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto ../configure --disable-gdb --quiet --disable-shared CFLAGS='-Wno-error'

                        #Only use bear if compile_commands.json doesn't exist
			if [ -e "compile_commands.json" ]; then 
	                        CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto make -j $(nproc) CFLAGS='-Wno-error'
			else
	                        CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto bear -- make -j $(nproc) CFLAGS='-Wno-error'
			fi
                popd
        popd

        pushd binutils-gcov
                # Compile with coverage
                pushd objdir
			afl-cov-build.sh -c ../configure --disable-gdb --quiet; make -j $(nproc)
                popd
        popd

        pushd binutils-instrumented
                        /home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ../binutils/objdir/compile_commands.json ./binutils/cxxfilt.c ./binutils/nm.c ./binutils/objdump.c ./binutils/readelf.c ./binutils/size.c ./binutils/strings.c

                pushd objdir
                        CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto ../configure --disable-gdb --quiet --disable-shared CFLAGS='-Wno-error'
                        AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto make -j $(nproc) CFLAGS='-Wno-error'
                popd
        popd
popd

