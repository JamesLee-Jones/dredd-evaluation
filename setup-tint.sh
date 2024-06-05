set -e
set -x
set -u

mkdir -p $DREDD_EVAL/third_party
if [ ! -d "$DREDD_EVAL/third_party/depot_tools" ]; then
  git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git $DREDD_EVAL/third_party/depot_tools
fi

export PATH=$DREDD_EVAL/third_party/depot_tools:$PATH

pushd $DREDD_EVAL/Evaluation
  mkdir -p tint
  pushd tint
    if [ ! -d "tint" ]; then
      git clone https://dawn.googlesource.com/tint tint
      pushd tint
      if [ ! -e ".gclient" ]; then
        # Bootstrap the gclient configuration
        cp standalone.gclient .gclient

        # Fetch external dependencies and toolchains with gclient
        gclient sync
      fi
      popd  # tint
    fi

    if [ ! -d "tint-gcov" ]; then
      cp -r tint tint-gcov
      mkdir -p tint-gcov/out/Debug
    fi



    pushd tint-gcov/out/Debug
      $AFL_COV/afl-cov-build.sh cmake -GNinja ../..; ninja tint
    popd  # tint-gcov/out/Debug

    source "$DREDD_EVAL/utils/set-afl-build-vars.sh"

    pushd tint
      # Compile using CMake + Ninja
      mkdir -p out/Debug
      pushd out/Debug
        cmake -GNinja ../..
        ninja tint # glslangtests tintunittest
      popd  # out/Debug
    popd  # tint

    if [ ! -d "tint-instrumented" ]; then
      cp -r tint tint-instrumented
    fi

    pushd tint-instrumented
      # Build to get compile_commands.json
      pushd out/Debug
        rm -rf ./*
        cmake -GNinja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ../..
        ninja tint
      popd  # out/Debug

      # TODO: Update this to use a flag in Dredd.
      $DREDD/dredd --semantics-preserving-coverage-instrumentation -p ./out/Debug/compile_commands.json $($DREDD_EVAL/utils/get-compile-commands-files.sh ./out/Debug/compile_commands.json ./src .c .cc)

      pushd out/Debug
        rm -rf ./*
        cmake -GNinja -DCMAKE_CXX_FLAGS="-Wno-c++20-extensions -fbracket-depth=1024" ../../
        ninja tint # glslangtests tint_unittests
      popd  # out/Debug
    popd  # tint-instrumented

  popd  # tint
popd  # $DREDD_EVAL/Evalutation

