set -e
set -x
set -u

# Necessary AWS EC2 packages
sudo apt update
sudo apt install -y python3-pip python3-full unzip zip cmake clang-16 ninja-build libzstd-dev m4 bear texinfo autopoint gperf lcov
# pip3 install --upgrade pip
# pip3 install build

# Install prerequisites.
./prereq.sh

# Setup clang
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-16 100 --slave /usr/bin/clang++ clang++ /usr/bin/clang++-16
sudo update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-16 100

# Setup Dredd
if [ ! -d "dredd" ]; then
  git clone --recursive https://github.com/mc-imperial/dredd.git
fi

pushd dredd

pushd third_party
if [ ! -d "clang+llvm" ]; then
  curl -Lo clang+llvm.tar.xz https://github.com/llvm/llvm-project/releases/download/llvmorg-16.0.4/clang+llvm-16.0.4-x86_64-linux-gnu-ubuntu-22.04.tar.xz
  tar xf clang+llvm.tar.xz
  mv clang+llvm-16.0.4-x86_64-linux-gnu-ubuntu-22.04 clang+llvm
  rm clang+llvm.tar.xz
fi
popd

git checkout semantics-preserving-code-coverage

mkdir -p build 
pushd build
  cmake -G Ninja .. -DCMAKE_BUILD_TYPE=Release
  cmake --build . --config Release
  cp src/dredd/dredd ../third_party/clang+llvm/bin
popd
popd


# Setup AFL++
sudo apt-get install -y build-essential python3-dev automake cmake git flex bison libglib2.0-dev libpixman-1-dev python3-setuptools cargo libgtk-3-dev
sudo apt-get install -y lld-16 llvm-16 llvm-16-dev clang-16 || sudo apt-get install -y lld llvm llvm-dev clang
sudo apt-get install -y gcc-$(gcc --version|head -n1|sed 's/\..*//'|sed 's/.* //')-plugin-dev libstdc++-$(gcc --version|head -n1|sed 's/\..*//'|sed 's/.* //')-dev
sudo apt-get install -y ninja-build # for QEMU mode
if [ ! -d "AFLplusplus" ]; then
  git clone https://github.com/AFLplusplus/AFLplusplus
fi
export LLVM_CONFIG=llvm-config-16

pushd AFLplusplus
make distrib
sudo make install
popd


# Setup afl-cov
if [ ! -d "afl-cov" ]; then
  git clone https://github.com/vanhauser-thc/afl-cov.git
fi 

# Setup test systems
./setup.sh

if [ -n "$DREDD_EVAL" ]; then 
  echo "export DREDD_EVAL=$(pwd)" >> ~/.bashrc
  source ~/.bashrc
fi

if [ -n "$AFL_COV" ]; then 
  echo "export AFL_COV=$DREDD_EVAL/afl-cov" >> ~/.bashrc
  echo "export PATH=\$PATH:$AFL_COV" >> ~/.bashrc
  source ~/.bashrc
fi

if [ -n "$DREDD" ]; then 
  echo "export DREDD_ROOT=$DREDD_EVAL/dredd/third_party/clang+llvm/bin" >> ~/.bashrc
  source ~/.bashrc
fi

