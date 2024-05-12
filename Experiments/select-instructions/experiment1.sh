set -u
set -x
set -e

CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto make -j $(nproc) CFLAGS='-Wno-error'
