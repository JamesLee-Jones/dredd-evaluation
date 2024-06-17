# Dredd Evaluation

A set of scripts for evaluating the use mutation coverage to guide greybox fuzzing as instrumented by [Dredd](https://github.com/mc-imperial/dredd).

## Prerequisites

- Clang
- make

##  Local Setup

First run `prereq.sh` to obtain the requirements for building the projects that are used to evaluate Dredd.

To recreate the evaluation setup, run `setup.sh`. This will clone and setup the necessary third party repositories 
(Dredd, AFL++ and afl-cov) as well as setting up the projects used for evaluation (tint, binutils and coreutils).
This will create four copies of each project: a base version compiled with the AFL++ compiler;
a version instrumented with Dredd compiled with the AFL++ compiler; a version built with gcov coverage instrumentation
and a version instrumented with Dredd's mutant tracking instrumentation to track mutation score.

It is necessary to export three environment variables to run the evaluation. The following can be run from the root
of the repository to set them:
```shell
export DREDD_EVAL=$(pwd)
export AFL_COV=$DREDD_EVAL/third_party/afl-cov
export PATH=$PATH:$AFL_COV
export DREDD=$DREDD_EVAL/third_party/dredd/third_party/clang+llvm/bin
```

# AWS Setup

The evaluation for this project was carried out on an AWS `t3.2xlarge` instance. To recreate the evaluation setup on
AWS, run `setup-aws.sh`. This is the same setup as described in [Local Setup](#local-setup) but deals with setting
environment variables programmatically. 


## Evaluating Dredd

TODO(JLJ): Write this section.

## Experiments

The `Experiments` directory contains small experiments for evaluating specific qualities about Dredd's instrumentation.

TODO(JLJ): Update the following sections.

### basic-blocks-and-control-flow

This directory contains one script, `basic-blocks-and-control-flow.sh` which compiles several C++ code snippets to LLVM bitcode, count the basic blocks and outputs their control flow graph. This is donefor snippets that cannot be optimized with and without Dredd's instrumentation and a code snippet that should be optimized when compiled with Dredd's instrumentation. This demonstrates how Dredd's instrumentation increases the number of basic blocks in the program and changes the control flow graph.


### execution-speed

This directory contains two scripts: `compile-time-comparison.sh` and `execution-speed-comparison.sh`. 

`compile-time-comparison.sh` measures the time taken to compile both the original version of binutils and the version that has been instrumented by Dredd. This must be executed before `execution-speed-comparison.sh` as having the two versions of binutils described above compiled is a prerequisit.

`execution-speed-comparison.sh` measures the time taken to execute the base and instrumented versions of the binutils executabls on a variety of inputs. This shows the execution speed slowdown induced by Dredd's instrumentation.

