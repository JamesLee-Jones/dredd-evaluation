#!/bin/bash

set -e
set -x

COMPILE_COMMANDS=ON
if [ -e "compile_commands.json" ]; then
  COMPILE_COMMANDS=OFF
fi

TIME=${TIME:-"OFF"}

cmake -GNinja -DSPIRV_BUILD_FUZZER=ON -DSPIRV_BUILD_LIBFUZZER_TARGETS=ON -DCMAKE_C_FLAGS="$CFLAGS" -DCMAKE_CXX_FLAGS="$CXXFLAGS" -DCMAKE_EXPORT_COMPILE_COMMANDS=$COMPILE_COMMANDS ..

if [ -z "$1" ]; then
  ninja spirv-opt spvtools_opt_performance_fuzzer
else
  if [ "$TIME" == "ON" ]; then
    /usr/bin/time -a -p -o "$1" ninja spirv-opt spvtools_opt_performance_fuzzer
  else
    ninja spirv-opt spvtools_opt_performance_fuzzer >> "$1"
  fi
fi
