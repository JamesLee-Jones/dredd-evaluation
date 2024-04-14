set -e
set -u
set -x

mkdir -p Evaluation
cd Evaluation

# Setup binutils for evaluation
mkdir -p binutils
pushd binutils
	mkdir -p results
	mkdir -p results/base
	mkdir -p results/instrumented
	mkdir -p testcase
	echo '' > testcase/root.txt

	if [ ! -d "binutils-gdb" ]; then
		git clone git://sourceware.org/git/binutils-gdb.git
	fi

	pushd binutils-gdb
		mkdir -p objdir
		if [ ! -d "../binutils-gdb-gcov" ]; then
			cp -r ../binutils-gdb ../binutils-gdb-gcov
		fi
		if [ ! -d "../binutils-gdb-instrumented" ]; then
			cp -r ../binutils-gdb ../binutils-gdb-instrumented
		fi

		# Compile the base version for fuzzing
		pushd objdir
			CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto ../configure --disable-gdb --quiet --disable-shared CFLAGS='-Wno-error'
			# TODO: Only use bear if compile_commands.json doesn't exist
			AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto bear -- make -j $(nproc) CFLAGS='-Wno-error'
		popd
	popd

	pushd binutils-gdb-gcov
		# Compile with coverage
		pushd objdir
			/home/jlj/dev/afl-cov/afl-cov-build.sh -c ../configure --disable-gdb --quiet
			make -j $(nproc)
		popd
	popd

	pushd binutils-gdb-instrumented
			/home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ../binutils-gdb/objdir/compile_commands.json ./binutils/cxxfilt.c ./binutils/nm.c ./binutils/objdump.c ./binutils/readelf.c ./binutils/size.c ./binutils/strings.c

		pushd objdir
			CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto ../configure --disable-gdb --quiet --disable-shared CFLAGS='-Wno-error'
			AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto make -j $(nproc) CFLAGS='-Wno-error'
		popd
	popd
popd


# Setup coreutils for evaluation
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
		if [ ! -d "../coreutils-gcov" ]; then
			mkdir -p ../coreutils-gcov
			cp -r ../coreutils/* ../coreutils-gcov
		fi

		rm -rf ../coreutils-instrumented
		cp -r ../coreutils ../coreutils-instrumented

		CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto ./configure --quiet
		AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto bear -- make -j $(nproc)
	popd

	# Compile with coverage
	pushd coreutils-gcov
		/home/jlj/dev/afl-cov/afl-cov-build.sh -c ./configure --quiet
		make -j $(nproc)
	popd

	# Compile with instrumentation
	pushd coreutils-instrumented
		/home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ../coreutils/compile_commands.json ./src/ls.c
		AR=llvm-ar RANLIB=llvm-ranlib AS=llvm-as LD=afl-clang-lto CC=/home/jlj/dev/AFLplusplus/afl-clang-lto  ./configure --quiet
		AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto make -j $(nproc)
	popd
popd

