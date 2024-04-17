#!/bin/bash

# TODO: Test other executables for a more representative result.
# Test against everything in /usr/bin
/usr/bin/time -o binutils-execution-speed.txt bash -c "for f in \$(find /usr/bin/ -maxdepth 1 -type f -executable); do ./binutils-gdb/objdir/binutils/readelf -a \$f &> /dev/null; done"
/usr/bin/time -o binutils-instrumented-execution-speed.txt bash -c "for f in \$(find /usr/bin/ -maxdepth 1 -type f -executable); do ./binutils-gdb-instrumented/objdir/binutils/readelf -a \$f &> /dev/null; done"

