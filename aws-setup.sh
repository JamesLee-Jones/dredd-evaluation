set -e
set -x

# Install prerequisites.
./prereq.sh

# Setup clang
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-16 100 --slave /usr/bin/clang++ clang++ /usr/bin/clang++-16
sudo update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-16 100

# Create third_party folder
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

source ~/.bashrc

if [ -z "${DREDD_EVAL}" ]; then 
  echo "export DREDD_EVAL=$(pwd)" >> ~/.bashrc
fi

if [ -z "${AFL_COV}" ]; then 
  echo "export AFL_COV=\$DREDD_EVAL/third_party/afl-cov" >> ~/.bashrc
  echo "export PATH=\$PATH:\$AFL_COV" >> ~/.bashrc
fi

if [ -z "${DREDD}" ]; then 
  echo "export DREDD=\$DREDD_EVAL/third_party/dredd/third_party/clang+llvm/bin" >> ~/.bashrc
fi

if [[ -z "${DREDD_EVAL}" || -z "${AFL_COV}" || -z "${DREDD}" ]]; then
  source ~/.bashrc
fi

echo "DREDD_EVAL: $DREDD_EVAL"
echo "AFL_COV: $AFL_COV"
echo "DREDD: $DREDD"

# Setup test systems
./setup.sh

