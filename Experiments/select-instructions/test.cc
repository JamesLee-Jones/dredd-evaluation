
static volatile unsigned long long int no_op = 0;

#include <cinttypes>
#include <cstddef>
#include <functional>
#include <limits>
#include <string>


#ifdef _MSC_VER
#define thread_local __declspec(thread)
#elif __APPLE__
#define thread_local __thread
#endif

#define MUTATION_RETURN(arg) actual_result
#define REPLACE_EXPR_NOT_EVALUATED(mutation_id_offset) if ((~(arg())) != actual_result) no_op++
#define REPLACE_EXPR_MINUS_EVALUATED(mutation_id_offset) if ((-(arg())) != actual_result) no_op++
#define REPLACE_EXPR_LNOT_EVALUATED(mutation_id_offset) if ((!(arg())) != actual_result) no_op++
#define REPLACE_EXPR_INT_ZERO(mutation_id_offset) if ((0) != actual_result) no_op++
#define REPLACE_EXPR_INT_ONE(mutation_id_offset) if ((1) != actual_result) no_op++
#define REPLACE_EXPR_INT_MINUS_ONE(mutation_id_offset) if ((-1) != actual_result) no_op++
#define REPLACE_EXPR_INC(mutation_id_offset) if ((arg + 1) != actual_result) no_op++
#define REPLACE_EXPR_DEC(mutation_id_offset) if ((arg - 1) != actual_result) no_op++
#define REPLACE_BINARY_Sub_LHS_EVALUATED_RHS_EVALUATED(type) if ((arg1() - arg2()) != actual_result) no_op++
#define REPLACE_BINARY_Rem_LHS_EVALUATED_RHS_EVALUATED(type) if ((arg2() != 0) && (arg1() % arg2()) != actual_result) no_op++
#define REPLACE_BINARY_Mul_LHS_EVALUATED_RHS_EVALUATED(type) if ((arg1() * arg2()) != actual_result) no_op++
#define REPLACE_BINARY_Div_LHS_EVALUATED_RHS_EVALUATED(type) if ((arg2() != 0) && (arg1() / arg2()) != actual_result) no_op++
#define REPLACE_BINARY_ARG2_EVALUATED(mutation_id_offset) if ((arg2()) != actual_result) no_op++
#define REPLACE_BINARY_ARG1_EVALUATED(mutation_id_offset) if ((arg1()) != actual_result) no_op++
#define MUTATION_PRELUDE(arg,type) type actual_result = arg;


__attribute__((always_inline)) static int __dredd_replace_binary_operator_Add_arg1_int_arg2_int(std::function<int()> arg1, std::function<int()> arg2, int local_mutation_id) {
  MUTATION_PRELUDE(arg1() + arg2(),int);
  REPLACE_BINARY_Div_LHS_EVALUATED_RHS_EVALUATED(int);
  REPLACE_BINARY_Mul_LHS_EVALUATED_RHS_EVALUATED(int);
  REPLACE_BINARY_Rem_LHS_EVALUATED_RHS_EVALUATED(int);
  REPLACE_BINARY_Sub_LHS_EVALUATED_RHS_EVALUATED(int);
  REPLACE_BINARY_ARG1_EVALUATED(4);
  REPLACE_BINARY_ARG2_EVALUATED(5);
  return MUTATION_RETURN(arg1() + arg2());
}

int main() {
  volatile int x = 0;
  volatile int y = 0;
  __dredd_replace_binary_operator_Add_arg1_int_arg2_int([&]() -> int { return static_cast<int>(x); } , [&]() -> int { return static_cast<int>(y); }, 20);
}

