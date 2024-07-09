set -e
set -x
set -u

export CXXFLAGS="-O3 -Wno-error=c++20-extensions -Wno-error=undef -Wno-error=unused-parameter -Wno-error=tautological-constant-out-of-range-compare -Wno-error=sign-compare -Wno-error=unused-variable"

pushd "$DREDD_EVAL"/Evaluation
  mkdir -p spirv-tools
  pushd spirv-tools
    # Add testcase
    mkdir -p single-testcase
    echo " " > single-testcase/test

    "$DREDD_EVAL"/setup_scripts/get-spirv-tools.sh

    if [ ! -d "spirv-tools-gcov" ]; then
      cp -r spirv-tools spirv-tools-gcov
    fi

    if [ ! -d "spirv-tools-instrumented" ]; then
      cp -r spirv-tools spirv-tools-instrumented
    fi

    if [ ! -d "spirv-tools-mutant-tracking" ]; then
      cp -r spirv-tools spirv-tools-mutant-tracking
    fi

    export CC=clang
    export CXX=clang++

    # Build spirv-opt to track coverage with gcov
    pushd spirv-tools-gcov/build
      "$AFL_COV"/afl-cov-build.sh -c "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
    popd  # spirv-tools-gcov/build

    # Build spirv-opt to track mutation coverage with Dredd
    pushd spirv-tools-mutant-tracking
      # Build to get compile_commands.json
      pushd build
        "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
      popd  # build

      "$DREDD"/dredd --only-track-mutant-coverage -p ./build/compile_commands.json --mutation-info-file ../mutant_tracking_info_file.json $(python3 "$DREDD_EVAL"/utils/get_compile_command_files.py ./build/compile_commands.json ./source/opt .cpp .h --ignore ./source/opt/optimizer.cpp)

      pushd build
        "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
      popd  # out/Debug
    popd  # spirv-tools-mutant-tracking


    source "$DREDD_EVAL/utils/set-afl-build-vars.sh"

    # Build spirv-opt for fuzzing with AFL
    pushd spirv-tools/build
      "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
    popd  # spirv-tools/build

    # Build spirv-opt instrumented with Dredd for fuzzing with AFL
    pushd spirv-tools-instrumented
      pushd build
        "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
      popd  # build

      "$DREDD"/dredd --semantics-preserving-coverage-instrumentation -p ./build/compile_commands.json --mutation-info-file ../mutation_info_file.json $(python3 "$DREDD_EVAL"/utils/get_compile_command_files.py ./build/compile_commands.json ./source/opt .cpp .h --ignore ./source/opt/optimizer.cpp)

      pushd build
        "$DREDD_EVAL"/setup_scripts/compile-spirv-tools.sh
      popd  # build
    popd  # spriv-tools-instrumented

  popd  # spirv-tools
popd  # $DREDD_EVAL/Evalutation

