set -e
set -u
set -x

mkdir -p Evaluation
cd Evaluation

# Setup binutils for evaluation
./setup-binutils.sh

# Setup coreutils for evaluation
./setup-coreutils.sh

