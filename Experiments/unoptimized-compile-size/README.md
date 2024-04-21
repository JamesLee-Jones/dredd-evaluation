# The Effect of Compiler Optimizations

This experiment is designed to evaluate how compiler optimization levels effect Dredd's instrumentation. This is done by comparing the compile time, the executable size, and the number of if statments present in each of the instrumented programs after optimization.

## Prequisites

- Clang and LLVM 14.0.0 built from source with assertions enabled (instructions can be found [here](https://github.com/llvm/llvm-project/tree/llvmorg-14.0.0)).


## Setup

Run `setup.sh` to run the experiment and produce `.txt` files containing the compile time and if statement counts for all of the source files compiled.

