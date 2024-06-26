set -e
set -x
set -u

mkdir -p "$DREDD_EVAL"/third_party
if [ ! -d "$DREDD_EVAL/third_party/depot_tools" ]; then
  git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git "$DREDD_EVAL"/third_party/depot_tools
fi

export PATH=$DREDD_EVAL/third_party/depot_tools:$PATH

export CXX_FLAGS="-Wno-c++20-extensions -fbracket-depth=1024"

pushd "$DREDD_EVAL"/Evaluation
  mkdir -p tint
  pushd tint
    # Add testcase
    mkdir -p single-testcase
    echo " " > single-testcase/root.wgsl

    "$DREDD_EVAL"/setup_scripts/get-tint.sh

    if [ ! -d "tint-gcov" ]; then
      cp -r tint tint-gcov
    fi

    if [ ! -d "tint-instrumented" ]; then
      cp -r tint tint-instrumented
    fi


    if [ ! -d "tint-mutant-tracking" ]; then
      cp -r tint tint-mutant-tracking
    fi

    # Build tint to track coverage with gcov
    pushd tint-gcov/out/Debug
      "$AFL_COV"/afl-cov-build.sh -c "$DREDD_EVAL"/setup_scripts/compile-tint.sh
    popd  # tint-gcov/out/Debug

    # Build tint to track mutation coverage with Dredd
    pushd tint-mutant-tracking
      # Build to get compile_commands.json
      pushd out/Debug
        "$DREDD_EVAL"/setup_scripts/compile-tint.sh
      popd  # out/Debug

      "$DREDD"/dredd --only-track-mutant-coverage -p ./out/Debug/compile_commands.json --mutation-info-file ../mutant_tracking_info_file.json $(python3 "$DREDD_EVAL"/utils/get_compile_command_files.py --ignore-tests ./out/Debug/compile_commands.json ./src .cc .c .h --ignore ./src/tint/lang/wgsl/reader/parser/parser.cc)

      pushd out/Debug
        "$DREDD_EVAL"/setup_scripts/compile-tint.sh
      popd  # out/Debug
    popd  # tint-mutant-tracking


    source "$DREDD_EVAL/utils/set-afl-build-vars.sh"

    # Build tint for fuzzing with AFL
    pushd tint/out/Debug
      "$DREDD_EVAL"/setup_scripts/compile-tint.sh
    popd  # tint/out/Debug

    # Build tint instrumented with Dredd for fuzzing with AFL
    pushd tint-instrumented
      # Build to get compile_commands.json
      pushd out/Debug
        "$DREDD_EVAL"/setup_scripts/compile-tint.sh
      popd  # out/Debug

      # TODO: Update this to use a flag in Dredd.
      "$DREDD"/dredd --semantics-preserving-coverage-instrumentation -p ./out/Debug/compile_commands.json --mutation-info-file ../mutation_info_file.json $(python3 $DREDD_EVAL/utils/get_compile_command_files.py --ignore-tests ./out/Debug/compile_commands.json ./src .cc .c .h --ignore ./src/tint/lang/wgsl/reader/parser/parser.cc)

      pushd out/Debug
        "$DREDD_EVAL"/setup_scripts/compile-tint.sh
      popd  # out/Debug
    popd  # tint-instrumented

  popd  # tint
popd  # $DREDD_EVAL/Evaluation

