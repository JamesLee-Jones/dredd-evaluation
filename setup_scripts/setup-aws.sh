set -e
set -x

if [ -z "${DREDD_EVAL}" ]; then
  echo "export DREDD_EVAL=$(pwd)" >> ~/.bashrc
  export DREDD_EVAL="$(pwd)"
fi

if [ -z "${AFL_COV}" ]; then
  afl_cov="$DREDD_EVAL/third_party/afl-cov"
  echo "export AFL_COV=$afl_cov" >> ~/.bashrc
  echo "export PATH=\$PATH:\$AFL_COV" >> ~/.bashrc
  export AFL_COV="$afl_cov"
  export PATH=$PATH:$AFL_COV
fi

if [ -z "${DREDD}" ]; then
  dredd="$DREDD_EVAL/third_party/dredd/third_party/clang+llvm/bin"
  echo "export DREDD=$dredd" >> ~/.bashrc
  export DREDD=$DREDD
fi

echo "DREDD_EVAL: $DREDD_EVAL"
echo "AFL_COV: $AFL_COV"
echo "DREDD: $DREDD"

# Install prerequisites.
"$DREDD_EVAL"/setup_scripts/prereq.sh

# Setup clang
sudo update-alternatives --install /usr/bin/clang clang /usr/bin/clang-16 100 --slave /usr/bin/clang++ clang++ /usr/bin/clang++-16
sudo update-alternatives --install /usr/bin/llvm-cov llvm-cov /usr/bin/llvm-cov-16 100
sudo update-alternatives --install /usr/bin/c++ c++ /usr/bin/clang++-16 100
sudo update-alternatives --install /usr/bin/cc cc /usr/bin/clang-16 100

# Setup test systems
"$DREDD_EVAL"/setup_scripts/setup.sh

