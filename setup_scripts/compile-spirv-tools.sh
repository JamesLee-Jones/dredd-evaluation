#!/bin/bash

set -e
set -x

COMPILE_COMMANDS=ON
if [ -e "compile_commands.json" ]; then
  COMPILE_COMMANDS=OFF
fi

cmake -GNinja -DCMAKE_CXX_FLAGS="$CXX_FLAGS" -DCMAKE_EXPORT_COMPILE_COMMANDS=$COMPILE_COMMANDS ..

if [ -z "$1" ]; then
  ninja spirv-opt
else
  { /usr/bin/time -a -p -o "$1" ninja spirv-opt; } 2>> "$1"
fi
