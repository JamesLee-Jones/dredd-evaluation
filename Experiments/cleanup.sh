#!/bin/bash
set -e
set -x
set -u

pushd "$DREDD_EVAL"/Experiments

for opt_level in "O0" "O1" "O2" "O3"; do
  rm -rf  "spirv-tools-$opt_level"/build/*
  rm -rf  "spirv-tools-instrumented-$opt_level"/build/*
done

for opt_level in "O0" "O1" "O2" "O3"; do
  rm -rf "tint-$opt_level"/out/Debug/*
  rm -rf "tint-instrumented-$opt_level"/out/Debug/*
done

for opt_level in "O0" "O1" "O2" "O3"; do
  rm -rf "binutils-$opt_level"/objdir/*
  rm -rf "binutils-instrumented-$opt_level"/objdir/*
done

popd
