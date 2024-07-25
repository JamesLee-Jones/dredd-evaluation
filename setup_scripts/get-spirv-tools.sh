#!/bin/bash

location=${1:-"spirv-tools"}

if [ ! -d "$location" ]; then
  git clone https://github.com/KhronosGroup/SPIRV-Tools.git "$location"
  pushd "$location"
    # Check out sources for dependencies, at versions known to work together,
    # as listed in the DEPS file.
    git checkout v2024.3
    python3 utils/git-sync-deps
    mkdir build
  popd  # $location
fi
