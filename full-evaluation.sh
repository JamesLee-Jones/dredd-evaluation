#!/bin/bash

set -e
set -u
set -x

CPUS=7
DURATION="8h"

while ISF=' ' read -r project source executable options; do
  flag=""
  input=""

  if [[ "$options" == *"@@"* ]]; then
    input="@@"
  fi

  extension=$(echo "$options" | grep -o '\.[^.]\+')
  flag=$(getopt "aCd" $options)
  flag="${flag%%--*}"
  echo $flag

  cd $DREDD_EVAL/Evaluation
  ../evaluate.sh "$DURATION" "$project" "$executable" "$flag" "$input" "$extension" "$CPUS"
done < "$1"

