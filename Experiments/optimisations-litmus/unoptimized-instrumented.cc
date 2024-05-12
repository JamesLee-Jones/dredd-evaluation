static unsigned long long int no_op = 0;

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
          if (local_value >= 0 && local_value < 50) {
            enabled_bitset[local_value / 64] |= (1 << (local_value % 64));
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
  return (enabled_bitset[local_mutation_id / 64] & (1 << (local_mutation_id % 64))) != 0;
}

#define MUTATION_RETURN(arg) actual_result
#define REPLACE_EXPR_NOT_EVALUATED(mutation_id_offset) if ((~(arg())) != actual_result) no_op++
#define REPLACE_EXPR_NOT(mutation_id_offset) if ((~(arg)) != actual_result) no_op++
#define REPLACE_EXPR_MINUS_EVALUATED(mutation_id_offset) if ((-(arg())) != actual_result) no_op++
#define REPLACE_EXPR_MINUS(mutation_id_offset) if ((-(arg)) != actual_result) no_op++
#define REPLACE_EXPR_LNOT_EVALUATED(mutation_id_offset) if ((!(arg())) != actual_result) no_op++
#define REPLACE_EXPR_LNOT(mutation_id_offset) if ((!(arg)) != actual_result) no_op++
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
__attribute__((always_inline)) inline static int __dredd_replace_expr_volatile_int_lvalue(volatile int& arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg,int);
  REPLACE_EXPR_INC(0);
  REPLACE_EXPR_DEC(1);
  return MUTATION_RETURN(arg);
}

__attribute__((always_inline)) inline static int __dredd_replace_expr_int_zero(int arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg,int);
  REPLACE_EXPR_INT_ONE(0);
  REPLACE_EXPR_INT_MINUS_ONE(1);
  return MUTATION_RETURN(arg);
}

__attribute__((always_inline)) inline static int __dredd_replace_expr_int_lvalue(int& arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg,int);
  REPLACE_EXPR_INC(0);
  REPLACE_EXPR_DEC(1);
  return MUTATION_RETURN(arg);
}

__attribute__((always_inline)) inline static int __dredd_replace_expr_int(std::function<int()> arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg(),int);
  REPLACE_EXPR_LNOT_EVALUATED(0);
  REPLACE_EXPR_NOT_EVALUATED(1);
  REPLACE_EXPR_MINUS_EVALUATED(2);
  REPLACE_EXPR_INT_ZERO(3);
  REPLACE_EXPR_INT_ONE(4);
  REPLACE_EXPR_INT_MINUS_ONE(5);
  return MUTATION_RETURN(arg());
}

__attribute__((always_inline)) inline static int __dredd_replace_expr_int(int arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg,int);
  REPLACE_EXPR_LNOT(0);
  REPLACE_EXPR_NOT(1);
  REPLACE_EXPR_MINUS(2);
  REPLACE_EXPR_INT_ZERO(3);
  REPLACE_EXPR_INT_ONE(4);
  REPLACE_EXPR_INT_MINUS_ONE(5);
  return MUTATION_RETURN(arg);
}

__attribute__((always_inline)) inline static int __dredd_replace_binary_operator_Add_arg1_int_arg2_int(std::function<int()> arg1, std::function<int()> arg2, int local_mutation_id) {
  MUTATION_PRELUDE(arg1() + arg2(),int);
  REPLACE_BINARY_Div_LHS_EVALUATED_RHS_EVALUATED(int);
  REPLACE_BINARY_Mul_LHS_EVALUATED_RHS_EVALUATED(int);
  REPLACE_BINARY_Rem_LHS_EVALUATED_RHS_EVALUATED(int);
  REPLACE_BINARY_Sub_LHS_EVALUATED_RHS_EVALUATED(int);
  REPLACE_BINARY_ARG1_EVALUATED(4);
  REPLACE_BINARY_ARG2_EVALUATED(5);
  return MUTATION_RETURN(arg1() + arg2());
}

int test(volatile int x, volatile int y) {
  return __dredd_replace_expr_int([&]() -> int { return static_cast<int>(__dredd_replace_binary_operator_Add_arg1_int_arg2_int([&]() -> int { return static_cast<int>(__dredd_replace_expr_int([&]() -> int { return static_cast<int>(__dredd_replace_expr_volatile_int_lvalue(x, 0)); }, 2)); } , [&]() -> int { return static_cast<int>(__dredd_replace_expr_int([&]() -> int { return static_cast<int>(__dredd_replace_expr_volatile_int_lvalue(y, 8)); }, 10)); }, 16)); }, 22);
}

int main() {
	int x = __dredd_replace_expr_int_zero(0, 29);
	int y = __dredd_replace_expr_int_zero(0, 31);
  test(__dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(x, 33), 35), __dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(y, 41), 43));
}
