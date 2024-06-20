#include <atomic>
#include <fstream>
#include <functional>
#include <sstream>

static void __dredd_record_covered_mutants(int local_mutation_id, int num_mutations) {
  static std::atomic<bool> already_recorded[25];
  if (already_recorded[local_mutation_id].exchange(true)) return;
  const char* dredd_tracking_environment_variable = std::getenv("DREDD_MUTANT_TRACKING_FILE");
  if (dredd_tracking_environment_variable == nullptr) return;
  std::ofstream output_file;
  output_file.open(dredd_tracking_environment_variable, std::ios_base::app);
  for (int i = 0; i < num_mutations; i++) {
    output_file << (0 + local_mutation_id + i) << "\n";
  }
}

static int __dredd_replace_expr_int(int arg, int local_mutation_id) {
  __dredd_record_covered_mutants(local_mutation_id, 6);
  return arg;
}

static int __dredd_replace_binary_operator_Add_arg1_int_arg2_int(int arg1, int arg2, int local_mutation_id) {
  __dredd_record_covered_mutants(local_mutation_id, 6);
  return arg1 + arg2;
}

int main() {
    __dredd_record_covered_mutants(24, 1); __dredd_replace_expr_int(__dredd_replace_binary_operator_Add_arg1_int_arg2_int(__dredd_replace_expr_int(1, 0) , __dredd_replace_expr_int(2, 6), 12), 18);
}