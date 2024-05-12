set -e
set -x
set -u

# Necessary AWS EC2 packages
sudo apt update
sudo apt install -y python3-pip python3.10-venv unzip zip cmake clang-15 ninja-build libzstd-dev m4
pip3 install --upgrade pip
pip3 install build

# Install prerequisites.
./prereq.sh

# Setup Dredd
git clone --recursive https://github.com/mc-imperial/dredd.git

pushd third_party
  curl -Lo clang+llvm.tar.xz https://github.com/llvm/llvm-project/releases/download/llvmorg-16.0.4/clang+llvm-16.0.4-x86_64-linux-gnu-ubuntu-22.04.tar.xz
  tar xf clang+llvm.tar.xz
  mv clang+llvm-16.0.4-x86_64-linux-gnu-ubuntu-22.04 clang+llvm
  rm clang+llvm.tar.xz
popd ..

mkdir build 
pushd build
  cmake -G Ninja .. -DCMAKE_BUILD_TYPE=Release
  cmake --build . --config Release
  cp src/dredd/dredd ../third_party/clang+llvm/bin
popd

