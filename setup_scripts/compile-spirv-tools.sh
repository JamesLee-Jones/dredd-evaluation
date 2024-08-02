#!/bin/bash

set -e
set -x

COMPILE_COMMANDS=ON
if [ -e "compile_commands.json" ]; then
  COMPILE_COMMANDS=OFF
fi

TIME=${TIME:-"OFF"}
TARGETS="spirv-opt"
COMPILE_FUZZER=${COMPILE_FUZZER:-"ON"}
if [ "$COMPILE_FUZZER" == "ON" ]; then
  TARGETS="$TARGETS spvtools_opt_performance_fuzzer"
fi
COVERAGE=${COVERAGE:-"OFF"}
COVERAGE_COMMAND="0"
if [ "$COVERAGE" == "ON" ]; then
  COVERAGE_COMMAND="1"
fi

cmake -GNinja -DSPIRV_BUILD_FUZZER="$COMPILE_FUZZER" -DSPIRV_BUILD_LIBFUZZER_TARGETS="$COMPILE_FUZZER" -DTINT_EMIT_COVERAGE="$COVERAGE_COMMAND" -DCMAKE_C_FLAGS="$CFLAGS" -DCMAKE_CXX_FLAGS="$CXXFLAGS" -DCMAKE_EXPORT_COMPILE_COMMANDS=$COMPILE_COMMANDS ..

if [ -z "$1" ]; then
  ninja $TARGETS
else
  if [ "$TIME" == "ON" ]; then
    /usr/bin/time -a -p -o "$1" ninja $TARGETS
  else
    ninja $TARGETS >> "$1"
  fi
fi
