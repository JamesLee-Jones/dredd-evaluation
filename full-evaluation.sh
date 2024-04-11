set -e
set -u
set -x

cd Evaluation
../evaluate.sh "4h" coreutils src/ls

