#!/bin/bash

set -e
set -x

../configure $CONFIG_FLAGS CFLAGS="$CFLAGS"

NPROC=${NPROC:-"$(nproc)"}

if [ -e "compile_commands.json" ]; then
  make_cmd="make -j $NPROC CFLAGS=\"$CFLAGS\""
else
  make_cmd="bear -- make -j $NPROC CFLAGS=\"$CFLAGS\""
fi

TIME=${TIME:-"OFF"}

if [ -z "$1" ]; then
  eval "$make_cmd"
else
    if [ "$TIME" == "ON" ]; then
    /usr/bin/time -a -p -o "$1" bash -c "$make_cmd"
  else
    bash -c "$make_cmd >> $1 2>&1"
  fi
fi
