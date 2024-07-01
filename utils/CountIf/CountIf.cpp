// Adapted from HelloWorld in llvm-tutor

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {

struct CountIf : PassInfoMixin<CountIf> {
  unsigned int ifCount = 0;
  
  PreservedAnalyses run(Module &M, ModuleAnalysisManager &MAM) {
    ifCount = 0;
    for (Function &F : M) {
      for (BasicBlock &BB : F) {
        for (Instruction &I : BB) {
          if (auto *Branch = dyn_cast<BranchInst>(&I)) {
            if (Branch->isConditional()) {
              ifCount++;
            }
          }
        }
      }
    }

    errs() << (M.getSourceFileName().empty() ? "Unnamed module" : M.getSourceFileName()) << ": " << ifCount << " if statements.\n";
    return PreservedAnalyses::all();
  }

  // Without isRequired returning true, this pass will be skipped for functions
  // decorated with the optnone LLVM attribute. Note that clang -O0 decorates
  // all functions with optnone.
  static bool isRequired() { return true; }
};
} // namespace

//-----------------------------------------------------------------------------
// New PM Registration
//-----------------------------------------------------------------------------
llvm::PassPluginLibraryInfo getCountIfPluginInfo() {
  return {LLVM_PLUGIN_API_VERSION, "CountIf", LLVM_VERSION_STRING,
          [](PassBuilder &PB) {
            PB.registerOptimizerLastEPCallback(
              [&](ModulePassManager &MPM, OptimizationLevel level) {
                MPM.addPass(CountIf());
              });
          }};
}

extern "C" LLVM_ATTRIBUTE_WEAK ::llvm::PassPluginLibraryInfo
llvmGetPassPluginInfo() {
  return getCountIfPluginInfo();
}
