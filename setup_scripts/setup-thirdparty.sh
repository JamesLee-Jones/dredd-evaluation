set -e
set -x
set -u

mkdir -p "$DREDD_EVAL"/third_party
pushd "$DREDD_EVAL"/third_party

  # Setup Dredd
  if [ ! -d "dredd" ]; then
    git clone --recursive https://github.com/mc-imperial/dredd.git

    pushd dredd
      pushd third_party
      if [ "$(ls -A clang+llvm)" ]; then
        rm -rf clang+llvm
        curl -Lo clang+llvm.tar.xz https://github.com/llvm/llvm-project/releases/download/llvmorg-16.0.4/clang+llvm-16.0.4-x86_64-linux-gnu-ubuntu-22.04.tar.xz
        tar xf clang+llvm.tar.xz
        mv clang+llvm-16.0.4-x86_64-linux-gnu-ubuntu-22.04 clang+llvm
        rm clang+llvm.tar.xz
      fi
      popd  # third_party

      git checkout semantics-preserving-code-coverage

      mkdir -p build
      pushd build
        cmake -G Ninja .. -DCMAKE_BUILD_TYPE=Release
        cmake --build . --config Release
        cp src/dredd/dredd ../third_party/clang+llvm/bin
      popd  # build
    popd  # dredd
  fi

  # Setup AFL++
  if [ ! -d "AFLplusplus" ]; then
    git clone https://github.com/AFLplusplus/AFLplusplus

    export LLVM_CONFIG=llvm-config-16

    pushd AFLplusplus
      make
      sudo make install
    popd  # AFLplusplus
  fi

  # Setup afl-cov
  if [ ! -d "afl-cov" ]; then
    git clone https://github.com/JamesLee-Jones/afl-cov.git
  fi

  if [ ! -d "binary-samples" ]; then
    git clone --depth=1 https://github.com/DavidKorczynski/binary-samples binary-samples
  fi

  if [ ! -d "lcov-1.14" ]; then
    wget "https://github.com/linux-test-project/lcov/releases/download/v1.14/lcov-1.14.tar.gz"
    tar -xzf "lcov-1.14.tar.gz"
    rm "lcov-1.14.tar.gz"
    pushd lcov-1.14
      sudo make install
    popd
    sudo cp /usr/bin/lcov /usr/bin/lcov-2
    sudo cp /usr/bin/geninfo /usr/bin/geninfo-2
    sudo cp /usr/bin/genhtml /usr/bin/genhtml-2
    sudo cp /usr/local/bin/lcov /usr/bin/lcov
    sudo cp /usr/local/bin/geninfo /usr/bin/geninfo
    sudo cp /usr/local/bin/genhtml /usr/bin/genhtml
  fi

  "$DREDD_EVAL"/setup_scripts/get-input-files.sh

popd  # third_party
