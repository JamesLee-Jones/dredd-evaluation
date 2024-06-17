set -e
set -x

# Install prerequisites.
./prereq.sh

# Setup clang
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-16 100 --slave /usr/bin/clang++ clang++ /usr/bin/clang++-16
sudo update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-16 100

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

