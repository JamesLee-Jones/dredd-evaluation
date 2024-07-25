#!/bin/bash

location=${1:-"binutils"}

if [ ! -d "$location" ]; then
  git clone git://sourceware.org/git/binutils-gdb.git "$location"
  pushd "$location"
    mkdir -p objdir
    git checkout binutils-2_42
  popd
fi
