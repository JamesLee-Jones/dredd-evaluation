set -e
set -x
set -u

export CXXFLAGS="-O3 -Wno-error=c++20-extensions -Wno-error=undef -Wno-error=unused-parameter -Wno-error=tautological-constant-out-of-range-compare -Wno-error=sign-compare -Wno-error=unused-variable -Wno-error=bool-operation -Wno-error=float-conversion"

pushd "$DREDD_EVAL"/Evaluation
  mkdir -p spirv-tools
  pushd spirv-tools
    # Add testcase
    mkdir -p single-testcase
    echo " " > single-testcase/test


    if [ ! -d "./spirv-tools" ]; then
      "$DREDD_EVAL"/setup_scripts/get-spirv-tools.sh
    fi

    if [ ! -d "input-corpus" ]; then
      cp -r ./spirv-tools/test/fuzzers/corpora/spv ./input-corpus
    fi

    export CC=clang
    export CXX=clang++

    if [ ! -d "spirv-tools-gcov" ]; then
      cp -r spirv-tools spirv-tools-gcov

      # Build spirv-opt to track coverage with gcov
      pushd spirv-tools-gcov/build
        rm -rf ./*
        CXXFLAGS="--coverage -O0" LDFLAGS="--coverage" "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
      popd  # spirv-tools-gcov/build
    fi

    if [ ! -d "spirv-tools-mutant-tracking" ]; then
      cp -r spirv-tools spirv-tools-mutant-tracking

      # Build spirv-opt to track mutation coverage with Dredd
      pushd spirv-tools-mutant-tracking
        # Build to get compile_commands.json
        pushd build
          rm -rf ./*
          "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
        popd  # build

        "$DREDD"/dredd --only-track-mutant-coverage -p ./build/compile_commands.json --mutation-info-file ../mutant_tracking_info_file.json $(python3 "$DREDD_EVAL"/utils/get_compile_command_files.py ./build/compile_commands.json ./source/opt .cpp .h --ignore ./source/opt/optimizer.cpp)

        pushd build
          "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
        popd  # out/Debug
      popd  # spirv-tools-mutant-tracking
    fi

    source "$DREDD_EVAL/utils/set-afl-build-vars.sh"

    if [ ! -d "spirv-tools-instrumented" ]; then
      cp -r spirv-tools spirv-tools-instrumented

      # Build spirv-opt instrumented with Dredd for fuzzing with AFL
      pushd spirv-tools-instrumented
        pushd build
          rm -rf ./*
          "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
        popd  # build

        "$DREDD"/dredd --semantics-preserving-coverage-instrumentation -p ./build/compile_commands.json --mutation-info-file ../mutation_info_file.json $(python3 "$DREDD_EVAL"/utils/get_compile_command_files.py ./build/compile_commands.json ./source/opt .cpp .h --ignore ./source/opt/optimizer.cpp)

        pushd build
          "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
        popd  # build
      popd  # spriv-tools-instrumented
    fi

    # Build spirv-opt for fuzzing with AFL
    pushd spirv-tools/build
      "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
    popd  # spirv-tools/build


    export AFL_USE_ASAN=1

    if [ ! -d "spirv-tools-sanitizers" ]; then
      cp -r spirv-tools spirv-tools-sanitizers

      pushd spirv-tools-sanitizers/build
        rm -rf ./*
        "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
      popd  # spirv-tools-sanitizers/build
    fi

    if [ ! -d "spirv-tools-instrumented-sanitizers" ]; then
      cp -r spirv-tools-instrumented spirv-tools-instrumented-sanitizers

      pushd spirv-tools-instrumented-sanitizers/build
        rm -rf ./*
        "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
      popd  # spirv-tools/build
    fi

  popd  # spirv-tools
popd  # $DREDD_EVAL/Evalutation

