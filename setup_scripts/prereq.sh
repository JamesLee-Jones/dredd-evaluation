set -e
set -u
set -x

sudo apt update

sudo apt-get install -y python3-pip python3-full unzip zip cmake clang-16 ninja-build libzstd-dev m4 bear texinfo autopoint gperf lcov libmpc-dev flex build-essential python3-dev automake cmake git flex bison libglib2.0-dev libpixman-1-dev python3-setuptools cargo libgtk-3-dev spirv-tools

sudo apt-get install -y lld-16 llvm-16 llvm-16-dev clang-16 || sudo apt-get install -y lld llvm llvm-dev clang

sudo apt-get install -y gcc-$(gcc --version|head -n1|sed 's/\..*//'|sed 's/.* //')-plugin-dev libstdc++-$(gcc --version|head -n1|sed 's/\..*//'|sed 's/.* //')-dev

python3 -m venv "$DREDD_EVAL"/venv
source "$DREDD_EVAL"/venv/bin/activate
python3 -m pip install -r "$DREDD_EVAL"/requirements.txt

