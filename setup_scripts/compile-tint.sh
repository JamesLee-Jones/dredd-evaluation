#!/bin/bash

set -e
set -x

COMPILE_COMMANDS=ON
if [ -e "compile_commands.json" ]; then
  COMPILE_COMMANDS=OFF
fi

TIME=${TIME:-"OFF"}
COMPILE_FUZZER=${COMPILE_FUZZER:-"ON"}
TARGETS="tint"
if [ "$COMPILE_FUZZER" == "ON" ]; then
  TARGETS="$TARGETS tint_wgsl_fuzzer"
fi

cmake -GNinja -DTINT_BUILD_FUZZERS="$COMPILE_FUZZER" -DCMAKE_C_FLAGS="$CFLAGS" -DCMAKE_CXX_FLAGS="$CXXFLAGS" -DCMAKE_EXPORT_COMPILE_COMMANDS=$COMPILE_COMMANDS ../..
if [ -z "$1" ]; then
  ninja $TARGETS
else
    if [ "$TIME" == "ON" ]; then
    /usr/bin/time -a -p -o "$1" ninja $TARGETS
  else
    ninja $TARGETS >> "$1"
  fi
fi
