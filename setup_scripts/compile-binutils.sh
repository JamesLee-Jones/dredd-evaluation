#!/bin/bash

set -e
set -x

../configure $CONFIG_FLAGS CFLAGS="$CFLAGS"

if [ -e "compile_commands.json" ]; then
  make_cmd="make -j $(nproc) CFLAGS=\"$CFLAGS\""
else
  make_cmd="bear -- make -j $(nproc) CFLAGS=\"$CFLAGS\""
fi

if [ -z "$1" ]; then
  eval "$make_cmd"
else
  /usr/bin/time -p -o "$1" eval "$make_cmd 2>> $1"
fi
