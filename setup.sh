set -e
set -u
set -x

if [ ! -d "Evaluation" ]; then
	mkdir Evaluation
fi
cd Evaluation

# Setup coreutils for evaluation
if [ ! -d "coreutils" ]; then
	mkdir coreutils
	pushd coreutils
		mkdir results
		mkdir results/base
		mkdir results/instrumented
		mkdir testcase
		echo '/' > testcase/root.txt

		git clone git://git.sv.gnu.org/coreutils

		# TODO: Change this to instrumente every c file in src
		sed -i '/^#include <config.h>/a #include "\/home\/jlj\/dev\/AFL\/experimental\/argv_fuzzing\/argv-fuzz-inl.h"' ./coreutils/src/ls.c
		sed -i '/^main (int argc, char \*\*argv)/{N;s/{/&\n  AFL_INIT_SET0("ls");/}' ./coreutils/src/ls.c
	popd
fi

# Make sure we have a clean version of coreutils
cd coreutils/coreutils

./bootstrap
mkdir ../coreutils-gcov
cp -r ../coreutils/* ../coreutils-gcov
cp -r ../coreutils ../coreutils-instrumented

# Compile the base version for fuzzing
CC=/home/jlj/dev/AFL/afl-clang ./configure --quiet
bear -- make -j $(nproc)

# Compile with coverage
cd ../coreutils-gcov
./configure --quiet CFLAGS="-g -fprofile-arcs -ftest-coverage"
make -j $(nproc)


# Compile with instrumentation
cd ../coreutils-instrumented
/home/jlj/dev/dredd/third_party/clang+llvm/bin/dredd --semantics-preserving-coverage-instrumentation -p ../coreutils/compile_commands.json ./src/ls.c
sed -i '/#include <config.h>/d' ./src/ls.c
sed -i '1s/^/#include <config.h>\n/' ./src/ls.c
CC=/home/jlj/dev/AFL/afl-clang ./configure --quiet
make -j $(nproc)
