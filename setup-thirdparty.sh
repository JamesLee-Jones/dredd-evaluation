mkdir -p third_party
pushd third_party

  # Setup Dredd
  if [ ! -d "dredd" ]; then
    git clone --recursive https://github.com/mc-imperial/dredd.git
  fi

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


  # Setup AFL++
  if [ ! -d "AFLplusplus" ]; then
    git clone https://github.com/AFLplusplus/AFLplusplus
  fi
  export LLVM_CONFIG=llvm-config-16

  pushd AFLplusplus
    make
    sudo make install
  popd  # AFLplusplus


  # Setup afl-cov
  if [ ! -d "afl-cov" ]; then
    git clone https://github.com/vanhauser-thc/afl-cov.git
  fi

popd  # third_party
