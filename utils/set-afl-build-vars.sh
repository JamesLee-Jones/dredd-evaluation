#!/bin/bash

export CC=afl-clang-lto 
export CXX=afl-clang-lto++ 
export AR=llvm-ar-16 
export RANLIB=llvm-ranlib-16 
export AS=llvm-as-16 
export LD=afl-ld-lto

