#!/bin/bash

sources=""

while read -r project source extra; do
  if [[ $project == $2 ]]; then
    sources+="$source "
  fi
done < "$1"

echo $sources

