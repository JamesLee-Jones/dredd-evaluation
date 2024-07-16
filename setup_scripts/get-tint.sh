#!/bin/bash

location=${1:-"tint"}

depot_tools_dir="$DREDD_EVAL/third_party/depot_tools"
if [ ! -d "$depot_tools_dir" ]; then
  git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git "depot_tools_dir"
fi

export PATH=$PATH:$depot_tools_dir

if [ ! -d "$location" ]; then
  git clone https://dawn.googlesource.com/tint "$location"
  pushd "$location"
    git apply "$DREDD_EVAL"/setup_scripts/tint.patch

    if [ ! -e ".gclient" ]; then
      # Bootstrap the gclient configuration
      cp standalone.gclient .gclient

      # Fetch external dependencies and toolchains with gclient
      gclient sync
    fi

    mkdir -p out/Debug
  popd  # $location
fi
