#include <cinttypes>
#include <cstddef>
#include <functional>
#include <string>


#ifdef _MSC_VER
#define thread_local __declspec(thread)
#elif __APPLE__
#define thread_local __thread
#endif

static thread_local bool __dredd_some_mutation_enabled = true;
static bool __dredd_enabled_mutation(int local_mutation_id) {
  static thread_local bool initialized = false;
  static thread_local uint64_t enabled_bitset[1];
  if (!initialized) {
    bool some_mutation_enabled = false;
    const char* dredd_environment_variable = std::getenv("DREDD_ENABLED_MUTATION");
    if (dredd_environment_variable != nullptr) {
      std::string contents(dredd_environment_variable);
      while (true) {
        size_t pos = contents.find(",");
        std::string token = (pos == std::string::npos ? contents : contents.substr(0, pos));
        if (!token.empty()) {
          int value = std::stoi(token);
          int local_value = value - 0;
          if (local_value >= 0 && local_value < 25) {
            enabled_bitset[local_value / 64] |= ((uint64_t) 1 << (local_value % 64));
            some_mutation_enabled = true;
          }
        }
        if (pos == std::string::npos) {
          break;
        }
        contents.erase(0, pos + 1);
      }
    }
    initialized = true;
    __dredd_some_mutation_enabled = some_mutation_enabled;
  }
  return (enabled_bitset[local_mutation_id / 64] & ((uint64_t) 1 << (local_mutation_id % 64))) != 0;
}

#define MUTATION_RETURN(arg) arg
#define REPLACE_EXPR_NOT(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_MINUS(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_LNOT(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_INT_ZERO(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_INT_ONE(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_INT_MINUS_ONE(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_BINARY_Sub_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 - arg2;
#define REPLACE_BINARY_Rem_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 % arg2;
#define REPLACE_BINARY_Mul_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 * arg2;
#define REPLACE_BINARY_Div_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 / arg2;
#define REPLACE_BINARY_ARG2(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_BINARY_ARG1(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define MUTATION_PRELUDE(arg) if (!__dredd_some_mutation_enabled) return arg
static int __dredd_replace_expr_int(int arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg);
  REPLACE_EXPR_LNOT(arg, 0);
  REPLACE_EXPR_NOT(arg, 1);
  REPLACE_EXPR_MINUS(arg, 2);
  REPLACE_EXPR_INT_ZERO(0, 3);
  REPLACE_EXPR_INT_ONE(1, 4);
  REPLACE_EXPR_INT_MINUS_ONE(-1, 5);
  return MUTATION_RETURN(arg);
}

static int __dredd_replace_binary_operator_Add_arg1_int_arg2_int(int arg1, int arg2, int local_mutation_id) {
  MUTATION_PRELUDE(arg1 + arg2);
  REPLACE_BINARY_Div_arg1_int_arg2_int(arg1, arg2, 0);
  REPLACE_BINARY_Mul_arg1_int_arg2_int(arg1, arg2, 1);
  REPLACE_BINARY_Rem_arg1_int_arg2_int(arg1, arg2, 2);
  REPLACE_BINARY_Sub_arg1_int_arg2_int(arg1, arg2, 3);
  REPLACE_BINARY_ARG1(arg1, 4);
  REPLACE_BINARY_ARG2(arg2, 5);
  return MUTATION_RETURN(arg1 + arg2);
}

int main() {
    if (!__dredd_enabled_mutation(24)) { __dredd_replace_expr_int(__dredd_replace_binary_operator_Add_arg1_int_arg2_int(__dredd_replace_expr_int(1, 0) , __dredd_replace_expr_int(2, 6), 12), 18); }
}