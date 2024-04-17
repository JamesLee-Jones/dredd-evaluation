#!/bin/bash

set -e
set -u
set -x

mkdir -p coreutils
pushd coreutils
        mkdir -p results
        mkdir -p results/base
        mkdir -p results/instrumented
        mkdir -p testcase
        echo '' > testcase/root.txt

        if [ ! -d "coreutils" ]; then
                git clone git://git.sv.gnu.org/coreutils
                # TODO: Change this to instrumente every c file in src
                sed -i '/^#include <config.h>/a #include "\/home\/jlj\/dev\/AFL\/experimental\/argv_fuzzing\/argv-fuzz-inl.h"' ./coreutils/src/ls.c
                sed -i '/^main (int argc, char \*\*argv)/{N;s/{/&\n  AFL_INIT_SET0("ls");/}' ./coreutils/src/ls.c
        fi


        # Compile the base version for fuzzing
        pushd coreutils
                ./bootstrap

		# Don't build man files as they can cause issues
		sed -i '/^include $(top_srcdir)\/man\/local\.mk/d' ./Makefile.am

                if [ ! -d "../coreutils-gcov" ]; then
                        mkdir -p ../coreutils-gcov
                        cp -r ../coreutils/* ../coreutils-gcov
                fi

                rm -rf ../coreutils-instrumented
                cp -r ../coreutils ../coreutils-instrumented

                CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto ./configure --quiet
		if [ -e "compile_commands.json" ]; then
               		AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto make -j $(nproc)
		else
                	AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto bear -- make -j $(nproc)
		fi
        popd

        # Compile with coverage
        pushd coreutils-gcov
		afl-cov-build.sh -c ./configure --quiet; make -j $(nproc)
        popd

        # Compile with instrumentation
        pushd coreutils-instrumented
                /home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ../coreutils/compile_commands.json ./src/ls.c
                CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto ./configure --quiet
                AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto make -j $(nproc)
        popd
popd

