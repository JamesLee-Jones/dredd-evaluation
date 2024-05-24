#!/bin/bash

sources=""

while read -r project source extra; do
  if [[ $project == $2 ]]; then
    if [ "$(basename "$source")" = "*" ]; then
      sources+="$(find $(dirname "$source") -type f -name '*.c' -o -name '*.cc')"
    else
      sources+="$source "
    fi
  fi
done < "$1"

echo $sources

