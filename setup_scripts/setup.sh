#!/bin/bash

set -e
set -u
set -x

# Add afl-cov to path
export PATH=$PATH:$AFL_COV

"$DREDD_EVAL"/setup_scripts/setup-thirdparty.sh

mkdir -p Evaluation
cd "$DREDD_EVAL"/Evaluation

# Setup tint for evaluation
"$DREDD_EVAL"/setup_scripts/setup-tint.sh

# Setup spirv-tools for evaluation
"$DREDD_EVAL"/setup_scripts/setup-tint.sh

# Setup binutils for evaluation
"$DREDD_EVAL"/setup_scripts/setup-binutils.sh
