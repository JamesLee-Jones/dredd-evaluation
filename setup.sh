#!/bin/bash

set -e
set -u
set -x

# Add afl-cov to path
export PATH=$PATH:/home/jlj/dev/afl-cov

mkdir -p Evaluation
cd Evaluation

# Setup binutils for evaluation
../setup-binutils.sh

# Setup coreutils for evaluation
../setup-coreutils.sh

