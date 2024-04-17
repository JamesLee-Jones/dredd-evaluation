# Dredd Evaluation

A set of scripts for evaluating the use mutation coverage to guide greybox fuzzing as instrumented by [Dredd](https://github.com/mc-imperial/dredd).

## Prerequisites

- AFL++
- afl-cov (found [here](https://github.com/vanhauser-thc/afl-cov))
- Clang
- make

##  Setup

First run `prereq.sh` to obtain the requirements for building the projects that are used to evaluate Dredd.

Then run `setup.sh` to clone and install coreutils and binutils and set them up for evaluation. This will create three copies of each project: a base version compiled with the AFL++ compiler, a version instrumented with Dredd compiled with the AFL++ compiler and a version built with coverage instrumentation.

## Evaluating Dredd

There are two main script for evaluating Dredd: `evaluate.sh` and `full-evaluation.sh`. 

`evaluate.sh <time> <program-root> <executable> <options> <afl-file-specifier> <number-of-threads>` enables evaluation of an executable. The executable will be fuzzed with AFL++ for the specified amount of time on the specified number of threads. The corpus is saved and executed on the original system compiled with gcov to obtain the coverage achieved during the fuzzing run. This process is repeated for both the original program and the program instrumented with Dredd.

`full-evaluation.sh` runs the evaluation described above on several of the executables in binutils (readelf, objdump, nm, c++filt, size, strings) and coreutils (ls) for 2 hours.

## Tests

The `Tests` directory contains small test for ensuring that Dredd's instrumentation is working as expected and for comparing the performace penaulty induced.

### basic-blocks-and-control-flow

This directory contains one script, `basic-blocks-and-control-flow.sh` which compiles several C++ code snippets to LLVM bitcode, count the basic blocks and outputs their control flow graph. This is donefor snippets that cannot be optimized with and without Dredd's instrumentation and a code snippet that should be optimized when compiled with Dredd's instrumentation. This demonstrates how Dredd's instrumentation increases the number of basic blocks in the program and changes the control flow graph.


### execution-speed

This directory contains two scripts: `compile-time-comparison.sh` and `execution-speed-comparison.sh`. 

`compile-time-comparison.sh` measures the time taken to compile both the original version of binutils and the version that has been instrumented by Dredd. This must be executed before `execution-speed-comparison.sh` as having the two versions of binutils described above compiled is a prerequisit.

`execution-speed-comparison.sh` measures the time taken to execute the base and instrumented versions of the binutils executabls on a variety of inputs. This shows the execution speed slowdown induced by Dredd's instrumentation.

