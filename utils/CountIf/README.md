# libCountIf

libCountIf is an llvm pass that is used to count the number of if statements in each module of a C or C++ codebase.

## Compiling libCountIF

`libCountIf.so` can be compiled by running the following commands from the `CountIf` directory:
```shell
mkdir build && cd build
cmake ..
make
```

# Using libCountIf

libCountIf can be used by passing the `-fpass-plugin=/path/to/build/libCountIf.so` to `clang` or `clang++`.
