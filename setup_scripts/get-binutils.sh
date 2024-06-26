#!/bin/bash

location=${1:-"binutils"}

if [ ! -d "$location" ]; then
  git clone git://sourceware.org/git/binutils-gdb.git "$location"
  mkdir -p ./binutils/objdir
fi
