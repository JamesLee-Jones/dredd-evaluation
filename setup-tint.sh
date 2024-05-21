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
  mkdir -p results
  mkdir -p results/base
  mkdir -p results/instrumented
  mkdir -p testcase
  echo '' > testcase/root.txt


if [ ! -d "tint" ]; then
  git clone https://dawn.googlesource.com/tint tint
fi

pushd tint
  if [ ! -e ".gclient" ]; then
    # Bootstrap the gclient configuration
    cp standalone.gclient .gclient

    # Fetch external dependencies and toolchains with gclient
    gclient sync
  fi

  # Compile using CMake + Ninja
  mkdir -p out/Debug
  pushd out/Debug
     AR=llvm-ar-16 RANLIB=llvm-ranlib-16 AS=llvm-as-16 LD=afl-ld-lto cmake -GNinja -DCMAKE_C_COMPILER=afl-clang-lto -DCMAKE_CXX_COMPILER=afl-clang-lto++ ../..
    AR=llvm-ar-16 RANLIB=llvm-ranlib-16 AS=llvm-as-16 LD=afl-ld-lto ninja tint
    mv compile_commands.json ../..
  popd  # out/Debug
popd  # tint

if [ ! -d "tint-gcov" ]; then
  cp -r tint tint-gcov
fi

pushd tint-gcov/out/Debug
  rm -rf ./*
  $AFL_COV/afl-cov-build.sh cmake -GNinja ../..; ninja tint
popd  # tint-gcov/out/Debug

if [ ! -d "tint-instrumented" ]; then
  cp -r tint tint-instrumented
fi

pushd tint-instrumented
  $DREDD/dredd -p ./compile_commands.json $($DREDD_EVAL/utils/list-source-files.sh $DREDD_EVAL/test-programs tint | sed -E 's|([^ ]+)|./\1 |g')

  pushd out/Debug
    rm -rf ./*
    CC=afl-clang-lto CXX=afl-clang-lto++ AR=llvm-ar-14 RANLIB=llvm-ranlib-14 AS=llvm-as-14 LD=afl-ld-lto cmake -GNinja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON ../..
      ninja tint
  popd  # out/Debug
popd  # tint-instrumented

popd  # tint
popd  # $DREDD_EVAL/Evalutation

