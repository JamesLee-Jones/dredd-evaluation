#include <inttypes.h>
#include <stdbool.h>
#include <stdlib.h>
#include <string.h>

#ifdef _MSC_VER
#define thread_local __declspec(thread)
#elif __APPLE__
#define thread_local __thread
#else
#include <threads.h>
#endif

static thread_local int __dredd_some_mutation_enabled = 1;
static int __dredd_enabled_mutation(int local_mutation_id) {
  static thread_local int initialized = 0;
  static thread_local uint64_t enabled_bitset[2];
  if (!initialized) {
    int some_mutation_enabled = 0;
    const char* dredd_environment_variable = getenv("DREDD_ENABLED_MUTATION");
    if (dredd_environment_variable) {
      char* temp = malloc(strlen(dredd_environment_variable) + 1);
      strcpy(temp, dredd_environment_variable);
      char* token;
      token = strtok(temp, ",");
      while(token) {
        int value = atoi(token);
        int local_value = value - 0;
        if (local_value >= 0 && local_value < 110) {
          enabled_bitset[local_value / 64] |= (1 << (local_value % 64));
          some_mutation_enabled = 1;
        }
        token = strtok(NULL, ",");
      }
      free(temp);
    }
    initialized = 1;
    __dredd_some_mutation_enabled = some_mutation_enabled;
  }
  return enabled_bitset[local_mutation_id / 64] & (1 << (local_mutation_id % 64));
}

static int __dredd_replace_expr_int_lvalue(int* arg, int local_mutation_id) {
  if (!__dredd_some_mutation_enabled) return (*arg);
  if (__dredd_enabled_mutation(local_mutation_id + 0)) return ++((*arg));
  if (__dredd_enabled_mutation(local_mutation_id + 1)) return --((*arg));
  return (*arg);
}

static int __dredd_replace_expr_int(int arg, int local_mutation_id) {
  if (!__dredd_some_mutation_enabled) return arg;
  if (__dredd_enabled_mutation(local_mutation_id + 0)) return !(arg);
  if (__dredd_enabled_mutation(local_mutation_id + 1)) return ~(arg);
  if (__dredd_enabled_mutation(local_mutation_id + 2)) return -(arg);
  if (__dredd_enabled_mutation(local_mutation_id + 3)) return 0;
  if (__dredd_enabled_mutation(local_mutation_id + 4)) return 1;
  if (__dredd_enabled_mutation(local_mutation_id + 5)) return -1;
  return arg;
}

static int __dredd_replace_binary_operator_LOr_arg1_int_arg2_int_rhs(int arg, int local_mutation_id) {
  if (!__dredd_some_mutation_enabled) return arg;
  if (__dredd_enabled_mutation(local_mutation_id + 0)) return !arg;
  if (__dredd_enabled_mutation(local_mutation_id + 1)) return 0;
  return arg;
}
static int __dredd_replace_binary_operator_LOr_arg1_int_arg2_int_outer(int arg, int local_mutation_id) {
  if (__dredd_enabled_mutation(local_mutation_id + 0)) return !arg;
  return arg;
}
static int __dredd_replace_binary_operator_LOr_arg1_int_arg2_int_lhs(int arg, int local_mutation_id) {
  if (!__dredd_some_mutation_enabled) return arg;
  if (__dredd_enabled_mutation(local_mutation_id + 0)) return !arg;
  if (__dredd_enabled_mutation(local_mutation_id + 2)) return 0;
  return arg;
}
static int __dredd_replace_binary_operator_GT_arg1_int_arg2_int(int arg1, int arg2, int local_mutation_id) {
  if (!__dredd_some_mutation_enabled) return arg1 > arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 0)) return arg1 == arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 1)) return arg1 != arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 2)) return arg1 >= arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 3)) return arg1 <= arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 4)) return arg1 < arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 5)) return arg1;
  if (__dredd_enabled_mutation(local_mutation_id + 6)) return arg2;
  return arg1 > arg2;
}

static int __dredd_replace_binary_operator_EQ_arg1_int_arg2_int(int arg1, int arg2, int local_mutation_id) {
  if (!__dredd_some_mutation_enabled) return arg1 == arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 0)) return arg1 != arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 1)) return arg1 >= arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 2)) return arg1 > arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 3)) return arg1 <= arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 4)) return arg1 < arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 5)) return arg1;
  if (__dredd_enabled_mutation(local_mutation_id + 6)) return arg2;
  return arg1 == arg2;
}

static int __dredd_replace_binary_operator_Div_arg1_int_arg2_int(int arg1, int arg2, int local_mutation_id) {
  if (!__dredd_some_mutation_enabled) return arg1 / arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 0)) return arg1 + arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 1)) return arg1 * arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 2)) return arg1 % arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 3)) return arg1 - arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 4)) return arg1;
  if (__dredd_enabled_mutation(local_mutation_id + 5)) return arg2;
  return arg1 / arg2;
}

int main() {
    int x = __dredd_replace_expr_int(4, 0), y = __dredd_replace_expr_int(0, 6);
    if (!__dredd_enabled_mutation(102)) { if (__dredd_replace_expr_int(__dredd_replace_binary_operator_LOr_arg1_int_arg2_int_outer(__dredd_replace_binary_operator_LOr_arg1_int_arg2_int_lhs(__dredd_replace_expr_int(__dredd_replace_binary_operator_EQ_arg1_int_arg2_int(__dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(&(y), 12), 14) , __dredd_replace_expr_int(0, 20), 26), 33), 86) || __dredd_replace_binary_operator_LOr_arg1_int_arg2_int_rhs(__dredd_replace_expr_int(__dredd_replace_binary_operator_GT_arg1_int_arg2_int(__dredd_replace_expr_int(__dredd_replace_binary_operator_Div_arg1_int_arg2_int(__dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(&(x), 39), 41) , __dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(&(y), 47), 49), 55), 61) , __dredd_replace_expr_int(0, 67), 73), 80), 86), 86), 89)) {
        if (!__dredd_enabled_mutation(101)) { return __dredd_replace_expr_int(0, 95); }
    } }
    if (!__dredd_enabled_mutation(109)) { return __dredd_replace_expr_int(1, 103); }
}