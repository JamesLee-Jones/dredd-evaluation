#include <fstream>
#include <iostream>

#include <cinttypes>
#include <cstddef>
#include <functional>
#include <string>


#ifdef _MSC_VER
#define thread_local __declspec(thread)
#elif __APPLE__
#define thread_local __thread
#endif

#include <limits>
#include <cmath>
static thread_local unsigned long long int no_op = 0;

#define MUTATION_RETURN(arg) actual_result
#define REPLACE_EXPR_TRUE(args) if ((args) == actual_result) no_op++
#define REPLACE_EXPR_NOT(args) if ((args) == actual_result) no_op++
#define REPLACE_EXPR_MINUS(args) if ((args) == actual_result) no_op++
#define REPLACE_EXPR_LNOT(args) if ((args) == actual_result) no_op++
#define REPLACE_EXPR_INT_ZERO(args) if ((args) == actual_result) no_op++
#define REPLACE_EXPR_INT_ONE(args) if ((args) == actual_result) no_op++
#define REPLACE_EXPR_INT_MINUS_ONE(args) if ((args) == actual_result) no_op++
#define REPLACE_EXPR_INC(args) if ((args) == actual_result) no_op++
#define REPLACE_EXPR_FALSE(args) if ((args) == actual_result) no_op++
#define REPLACE_EXPR_DEC(args) if ((args) == actual_result) no_op++
#define REPLACE_BINARY_LT_arg1_int_arg2_int(arg1, arg2) if ((arg1 < arg2) == actual_result) no_op++
#define REPLACE_BINARY_GT_arg1_int_arg2_int(arg1, arg2) if ((arg1 > arg2) == actual_result) no_op++
#define REPLACE_BINARY_EQ_arg1_int_arg2_int(arg1, arg2) if ((arg1 == arg2) == actual_result) no_op++
#define REPLACE_BINARY_EQ_arg1_bool_arg2_bool_LAnd(arg1, arg2) if ((arg1) && (arg1 == arg2) == actual_result) no_op++
#define REPLACE_BINARY_ARG2_LAnd(arg1, arg2) if ((arg1) && (arg2) == actual_result) no_op++
#define REPLACE_BINARY_ARG1(args) if ((args) == actual_result) no_op++
#define MUTATION_PRELUDE(arg,type) type actual_result = (arg)
static int __dredd_replace_expr_int_zero(int arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg,int);
  REPLACE_EXPR_INT_ONE(1);
  REPLACE_EXPR_INT_MINUS_ONE(-1);
  return MUTATION_RETURN(arg);
}

static int __dredd_replace_expr_int_one(int arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg,int);
  REPLACE_EXPR_NOT(arg);
  REPLACE_EXPR_INT_ZERO(0);
  REPLACE_EXPR_INT_MINUS_ONE(-1);
  return MUTATION_RETURN(arg);
}

static int __dredd_replace_expr_int_lvalue(int& arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg,int);
  REPLACE_EXPR_INC(arg);
  REPLACE_EXPR_DEC(arg);
  return MUTATION_RETURN(arg);
}

static int __dredd_replace_expr_int_constant(int arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg,int);
  REPLACE_EXPR_NOT(arg);
  REPLACE_EXPR_MINUS(arg);
  REPLACE_EXPR_INT_ZERO(0);
  REPLACE_EXPR_INT_ONE(1);
  REPLACE_EXPR_INT_MINUS_ONE(-1);
  return MUTATION_RETURN(arg);
}

static int __dredd_replace_expr_int(int arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg,int);
  REPLACE_EXPR_LNOT(arg);
  REPLACE_EXPR_NOT(arg);
  REPLACE_EXPR_MINUS(arg);
  REPLACE_EXPR_INT_ZERO(0);
  REPLACE_EXPR_INT_ONE(1);
  REPLACE_EXPR_INT_MINUS_ONE(-1);
  return MUTATION_RETURN(arg);
}

static bool __dredd_replace_expr_bool_omit_true(bool arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg,bool);
  REPLACE_EXPR_FALSE(false);
  return MUTATION_RETURN(arg);
}

static bool __dredd_replace_expr_bool_omit_false(bool arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg,bool);
  REPLACE_EXPR_TRUE(true);
  return MUTATION_RETURN(arg);
}

static bool __dredd_replace_expr_bool_before_logical_operator_argument_omit_false(bool arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg,bool);
  REPLACE_EXPR_TRUE(true);
  return MUTATION_RETURN(arg);
}

static bool __dredd_replace_expr_bool(std::function<bool()> arg, int local_mutation_id) {
  bool arg_evaluated = arg();
  MUTATION_PRELUDE(arg_evaluated,bool);
  REPLACE_EXPR_LNOT(arg_evaluated);
  REPLACE_EXPR_TRUE(true);
  REPLACE_EXPR_FALSE(false);
  return MUTATION_RETURN(arg_evaluated);
}

__attribute__((always_inline)) static bool __dredd_replace_binary_operator_NE_arg1_int_arg2_int(int arg1, int arg2, int local_mutation_id) {
  MUTATION_PRELUDE(arg1 != arg2,bool);
  REPLACE_BINARY_GT_arg1_int_arg2_int(arg1, arg2);
  REPLACE_BINARY_LT_arg1_int_arg2_int(arg1, arg2);
  return MUTATION_RETURN(arg1 != arg2);
}

__attribute__((always_inline)) static bool __dredd_replace_binary_operator_LE_arg1_int_arg2_int(int arg1, int arg2, int local_mutation_id) {
  MUTATION_PRELUDE(arg1 <= arg2,bool);
  REPLACE_BINARY_EQ_arg1_int_arg2_int(arg1, arg2);
  REPLACE_BINARY_LT_arg1_int_arg2_int(arg1, arg2);
  return MUTATION_RETURN(arg1 <= arg2);
}

__attribute__((always_inline)) static bool __dredd_replace_binary_operator_LAnd_arg1_bool_arg2_bool(bool arg1, std::function<bool()> arg2, int local_mutation_id) {
  MUTATION_PRELUDE(arg1 && arg2(),bool);
  REPLACE_BINARY_EQ_arg1_bool_arg2_bool_LAnd(arg1, arg2());
  REPLACE_BINARY_ARG1(arg1);
  REPLACE_BINARY_ARG2_LAnd(arg1, arg2());
  return MUTATION_RETURN(arg1 && arg2());
}

__attribute__((always_inline)) static bool __dredd_replace_binary_operator_GE_arg1_int_arg2_int_rhs_zero(int arg1, int arg2, int local_mutation_id) {
  MUTATION_PRELUDE(arg1 >= arg2,bool);
  REPLACE_BINARY_EQ_arg1_int_arg2_int(arg1, arg2);
  REPLACE_BINARY_GT_arg1_int_arg2_int(arg1, arg2);
  return MUTATION_RETURN(arg1 >= arg2);
}

int main(int argc, char* argv[]) {
  if (__dredd_replace_expr_bool_omit_false(__dredd_replace_binary_operator_NE_arg1_int_arg2_int(__dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(argc, 0), 2) , __dredd_replace_expr_int_constant(2, 8), 13), 15)) return __dredd_replace_expr_int_one(1, 16); // Only accept file name.

  std::ifstream file(argv[__dredd_replace_expr_int_one(1, 20)]);
  if (__dredd_replace_expr_bool([&]() -> bool { return static_cast<bool>(!file); }, 23)) return __dredd_replace_expr_int_one(1, 26);

  int index;
  if (__dredd_replace_expr_bool([&]() -> bool { return static_cast<bool>(!(file >> index)); }, 30)) return __dredd_replace_expr_int_one(1, 33);
  int array[1000] = {__dredd_replace_expr_int_zero(0, 37)};

  if (__dredd_replace_expr_bool_omit_true(__dredd_replace_binary_operator_LAnd_arg1_bool_arg2_bool(__dredd_replace_expr_bool_before_logical_operator_argument_omit_false(__dredd_replace_binary_operator_GE_arg1_int_arg2_int_rhs_zero(__dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(index, 39), 41) , __dredd_replace_expr_int_zero(0, 47), 49), 51) , [&]() -> bool { return static_cast<bool>(__dredd_replace_expr_bool_before_logical_operator_argument_omit_false(__dredd_replace_binary_operator_LE_arg1_int_arg2_int(__dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(index, 52), 54) , __dredd_replace_expr_int_constant(1000, 60), 65), 67)); }, 68), 71)) {
    std::cout << __dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(array[__dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(index, 72), 74)], 80), 82) << std::endl;
  }
  return __dredd_replace_expr_int_zero(0, 90);
}

