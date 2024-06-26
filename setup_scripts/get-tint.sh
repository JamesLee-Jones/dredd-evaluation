#!/bin/bash

location=${1:-"tint"}

if [ ! -d "$location" ]; then
  git clone https://dawn.googlesource.com/tint "$location"
  pushd "$location"
    if [ ! -e ".gclient" ]; then
      # Bootstrap the gclient configuration
      cp standalone.gclient .gclient

      # Fetch external dependencies and toolchains with gclient
      gclient sync
    fi

    mkdir -p out/Debug
  popd  # $location
fi
