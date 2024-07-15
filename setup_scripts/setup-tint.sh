set -e
set -x
set -u

mkdir -p "$DREDD_EVAL"/third_party
if [ ! -d "$DREDD_EVAL/third_party/depot_tools" ]; then
  git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git "$DREDD_EVAL"/third_party/depot_tools
fi

export PATH=$DREDD_EVAL/third_party/depot_tools:$PATH

export CXXFLAGS="-O3 -Wno-c++20-extensions -fbracket-depth=1024"

pushd "$DREDD_EVAL"/Evaluation
  mkdir -p tint
  pushd tint
    # Add testcase
    mkdir -p single-testcase
    echo " " > single-testcase/root.wgsl

    if [ ! -d "./tint" ]; then
      "$DREDD_EVAL"/setup_scripts/get-tint.sh
    fi

    export CC=clang
    export CXX=clang++

    if [ ! -d "tint-gcov" ]; then
      cp -r tint tint-gcov
      # Build tint to track coverage with gcov
      pushd tint-gcov/out/Debug
        "$AFL_COV"/afl-cov-build.sh -c "$DREDD_EVAL"/setup_scripts/compile-tint.sh
      popd  # tint-gcov/out/Debug
    fi

    if [ ! -d "tint-mutant-tracking" ]; then
      cp -r tint tint-mutant-tracking

      # Build tint to track mutation coverage with Dredd
      pushd tint-mutant-tracking
        # Build to get compile_commands.json
        pushd out/Debug
          "$DREDD_EVAL"/setup_scripts/compile-tint.sh
        popd  # out/Debug

        "$DREDD"/dredd --only-track-mutant-coverage -p ./out/Debug/compile_commands.json --mutation-info-file ../mutant_tracking_info_file.json $(python3 "$DREDD_EVAL"/utils/get_compile_command_files.py --ignore-tests ./out/Debug/compile_commands.json ./src .cc .c .h)

        pushd out/Debug
          "$DREDD_EVAL"/setup_scripts/compile-tint.sh
        popd  # out/Debug
      popd  # tint-mutant-tracking
    fi

    source "$DREDD_EVAL/utils/set-afl-build-vars.sh"

    if [ ! -d "tint-instrumented" ]; then
      cp -r tint tint-instrumented

      # Build tint instrumented with Dredd for fuzzing with AFL
      pushd tint-instrumented
        # Build to get compile_commands.json
        pushd out/Debug
          "$DREDD_EVAL"/setup_scripts/compile-tint.sh
        popd  # out/Debug

        # TODO: Update this to use a flag in Dredd.
        "$DREDD"/dredd --semantics-preserving-coverage-instrumentation -p ./out/Debug/compile_commands.json --mutation-info-file ../mutation_info_file.json $(python3 $DREDD_EVAL/utils/get_compile_command_files.py --ignore-tests ./out/Debug/compile_commands.json ./src .cc .c .h)

        pushd out/Debug
          "$DREDD_EVAL"/setup_scripts/compile-tint.sh
        popd  # out/Debug
      popd  # tint-instrumented
    fi

    # Build tint for fuzzing with AFL
    pushd tint/out/Debug
      "$DREDD_EVAL"/setup_scripts/compile-tint.sh
    popd  # tint/out/Debug

    export AFL_USE_UBSAN=1
    export AFL_USE_ASAN=1

    if [ ! -d "tint-sanitizers" ]; then
      cp -r tint tint-sanitizers

      pushd tint-sanitizers/out/Debug
        rm -rf ./*
        "$DREDD_EVAL"/setup_scripts/compile-tint.sh
      popd
    fi

    if [ ! -d "tint-instrumented-sanitizers" ]; then
      cp -r tint-instrumented tint-instrumented-sanitizers

      pushd tint-instrumented-sanitizers/out/Debug
        rm -rf ./*
        "$DREDD_EVAL"/setup_scripts/compile-tint.sh
      popd  # out/Debug
    fi

  popd  # tint
popd  # $DREDD_EVAL/Evaluation

