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

#define MUTATION_RETURN(arg) arg
#define REPLACE_EXPR_NOT(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_MINUS(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_LNOT(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_INT_ZERO(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_INT_ONE(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_INT_MINUS_ONE(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_INC(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_DEC(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_BINARY_Sub_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 - arg2;
#define REPLACE_BINARY_Rem_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 % arg2;
#define REPLACE_BINARY_NE_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 != arg2;
#define REPLACE_BINARY_Mul_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 * arg2;
#define REPLACE_BINARY_LT_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 < arg2;
#define REPLACE_BINARY_LE_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 <= arg2;
#define REPLACE_BINARY_GT_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 > arg2;
#define REPLACE_BINARY_GE_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 >= arg2;
#define REPLACE_BINARY_EQ_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 == arg2;
#define REPLACE_BINARY_Add_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 + arg2;
#define REPLACE_BINARY_ARG2(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_BINARY_ARG1(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define MUTATION_PRELUDE(arg) if (!__dredd_some_mutation_enabled) return arg
static int __dredd_replace_expr_int_lvalue(int* arg, int local_mutation_id) {
  MUTATION_PRELUDE((*arg));
  REPLACE_EXPR_INC((*arg), 0);
  REPLACE_EXPR_DEC((*arg), 1);
  return MUTATION_RETURN((*arg));
}

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
  MUTATION_PRELUDE(arg1 > arg2);
  REPLACE_BINARY_EQ_arg1_int_arg2_int(arg1, arg2, 0);
  REPLACE_BINARY_NE_arg1_int_arg2_int(arg1, arg2, 1);
  REPLACE_BINARY_GE_arg1_int_arg2_int(arg1, arg2, 2);
  REPLACE_BINARY_LE_arg1_int_arg2_int(arg1, arg2, 3);
  REPLACE_BINARY_LT_arg1_int_arg2_int(arg1, arg2, 4);
  REPLACE_BINARY_ARG1(arg1, 5);
  REPLACE_BINARY_ARG2(arg2, 6);
  return MUTATION_RETURN(arg1 > arg2);
}

static int __dredd_replace_binary_operator_EQ_arg1_int_arg2_int(int arg1, int arg2, int local_mutation_id) {
  MUTATION_PRELUDE(arg1 == arg2);
  REPLACE_BINARY_NE_arg1_int_arg2_int(arg1, arg2, 0);
  REPLACE_BINARY_GE_arg1_int_arg2_int(arg1, arg2, 1);
  REPLACE_BINARY_GT_arg1_int_arg2_int(arg1, arg2, 2);
  REPLACE_BINARY_LE_arg1_int_arg2_int(arg1, arg2, 3);
  REPLACE_BINARY_LT_arg1_int_arg2_int(arg1, arg2, 4);
  REPLACE_BINARY_ARG1(arg1, 5);
  REPLACE_BINARY_ARG2(arg2, 6);
  return MUTATION_RETURN(arg1 == arg2);
}

static int __dredd_replace_binary_operator_Div_arg1_int_arg2_int(int arg1, int arg2, int local_mutation_id) {
  MUTATION_PRELUDE(arg1 / arg2);
  REPLACE_BINARY_Add_arg1_int_arg2_int(arg1, arg2, 0);
  REPLACE_BINARY_Mul_arg1_int_arg2_int(arg1, arg2, 1);
  REPLACE_BINARY_Rem_arg1_int_arg2_int(arg1, arg2, 2);
  REPLACE_BINARY_Sub_arg1_int_arg2_int(arg1, arg2, 3);
  REPLACE_BINARY_ARG1(arg1, 4);
  REPLACE_BINARY_ARG2(arg2, 5);
  return MUTATION_RETURN(arg1 / arg2);
}

int main() {
    int x = __dredd_replace_expr_int(4, 0), y = __dredd_replace_expr_int(0, 6);
    if (!__dredd_enabled_mutation(102)) { if (__dredd_replace_expr_int(__dredd_replace_binary_operator_LOr_arg1_int_arg2_int_outer(__dredd_replace_binary_operator_LOr_arg1_int_arg2_int_lhs(__dredd_replace_expr_int(__dredd_replace_binary_operator_EQ_arg1_int_arg2_int(__dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(&(y), 12), 14) , __dredd_replace_expr_int(0, 20), 26), 33), 86) || __dredd_replace_binary_operator_LOr_arg1_int_arg2_int_rhs(__dredd_replace_expr_int(__dredd_replace_binary_operator_GT_arg1_int_arg2_int(__dredd_replace_expr_int(__dredd_replace_binary_operator_Div_arg1_int_arg2_int(__dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(&(x), 39), 41) , __dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(&(y), 47), 49), 55), 61) , __dredd_replace_expr_int(0, 67), 73), 80), 86), 86), 89)) {
        if (!__dredd_enabled_mutation(101)) { return __dredd_replace_expr_int(0, 95); }
    } }
    if (!__dredd_enabled_mutation(109)) { return __dredd_replace_expr_int(1, 103); }
}