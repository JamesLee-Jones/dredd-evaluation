#!/bin/bash

set -e
set -u
set -x

cd Evaluation
CPUS=10
DURATION="2h"

while ISF=' ' read -r project executable options; do
  flag=""
  input=""

  if [[ "$options" == *"@@"* ]]; then
    input="@@"
  fi

  flag=$(getopt "aCd" $options)
  flag="${flag%%--*}"

  ../evaluate.sh $DURATION $project $executable $flag $input $CPUS
done < "../$1"

