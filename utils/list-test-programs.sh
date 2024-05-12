#!/bin/bash

executables=""

while read -r project executable extra; do
  if [[ $project == $2 ]]; then
    executable=$(basename "$executable")
    executables+="$executable "
  fi
done < "$1"

echo $executables

