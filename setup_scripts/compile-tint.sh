#!/bin/bash

set -e
set -x

COMPILE_COMMANDS=ON
if [ -e "compile_commands.json" ]; then
  COMPILE_COMMANDS=OFF
fi

TIME=${TIME:-"OFF"}

cmake -GNinja -DTINT_BUILD_FUZZERS=ON -DCMAKE_C_FLAGS="$CFLAGS" -DCMAKE_CXX_FLAGS="$CXXFLAGS" -DCMAKE_EXPORT_COMPILE_COMMANDS=$COMPILE_COMMANDS ../..
if [ -z "$1" ]; then
  ninja tint
else
    if [ "$TIME" == "ON" ]; then
    /usr/bin/time -a -p -o "$1" ninja tint tint_wgsl_fuzzer
  else
    ninja tint tint_wgsl_fuzzer >> "$1"
  fi
fi
