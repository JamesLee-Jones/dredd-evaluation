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
  static thread_local uint64_t enabled_bitset[2];
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
          if (local_value >= 0 && local_value < 103) {
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
#define REPLACE_EXPR_TRUE(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_NOT(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_MINUS(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_LNOT(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_INT_ZERO(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_INT_ONE(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_INT_MINUS_ONE(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_INC(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_FALSE(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_EXPR_DEC(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_BINARY_Sub_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 - arg2;
#define REPLACE_BINARY_Rem_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 % arg2;
#define REPLACE_BINARY_NE_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 != arg2;
#define REPLACE_BINARY_NE_arg1_bool_arg2_bool(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 != arg2;
#define REPLACE_BINARY_Mul_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 * arg2;
#define REPLACE_BINARY_LT_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 < arg2;
#define REPLACE_BINARY_LE_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 <= arg2;
#define REPLACE_BINARY_LAnd_arg1_bool_arg2_bool(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 && arg2;
#define REPLACE_BINARY_GT_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 > arg2;
#define REPLACE_BINARY_GE_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 >= arg2;
#define REPLACE_BINARY_EQ_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 == arg2;
#define REPLACE_BINARY_EQ_arg1_bool_arg2_bool(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 == arg2;
#define REPLACE_BINARY_Add_arg1_int_arg2_int(arg1, arg2, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return arg1 + arg2;
#define REPLACE_BINARY_ARG2(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define REPLACE_BINARY_ARG1(args, mutation_id_offset) if (__dredd_enabled_mutation(local_mutation_id + mutation_id_offset)) return args
#define MUTATION_PRELUDE(arg) if (!__dredd_some_mutation_enabled) return arg
static int __dredd_replace_expr_int_lvalue(int& arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg);
  REPLACE_EXPR_INC(arg, 0);
  REPLACE_EXPR_DEC(arg, 1);
  return MUTATION_RETURN(arg);
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

static bool __dredd_replace_expr_bool(bool arg, int local_mutation_id) {
  MUTATION_PRELUDE(arg);
  REPLACE_EXPR_LNOT(arg, 0);
  REPLACE_EXPR_TRUE(true, 1);
  REPLACE_EXPR_FALSE(false, 2);
  return MUTATION_RETURN(arg);
}

static bool __dredd_replace_binary_operator_LOr_arg1_bool_arg2_bool(bool arg1, std::function<bool()> arg2, int local_mutation_id) {
  MUTATION_PRELUDE(arg1 || arg2());
  REPLACE_BINARY_LAnd_arg1_bool_arg2_bool(arg1, arg2(), 0);
  REPLACE_BINARY_EQ_arg1_bool_arg2_bool(arg1, arg2(), 1);
  REPLACE_BINARY_NE_arg1_bool_arg2_bool(arg1, arg2(), 2);
  REPLACE_BINARY_ARG1(arg1, 3);
  REPLACE_BINARY_ARG2(arg2(), 4);
  return MUTATION_RETURN(arg1 || arg2());
}

static bool __dredd_replace_binary_operator_GT_arg1_int_arg2_int(int arg1, int arg2, int local_mutation_id) {
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

static bool __dredd_replace_binary_operator_EQ_arg1_int_arg2_int(int arg1, int arg2, int local_mutation_id) {
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

int main() {
    int x = __dredd_replace_expr_int(4, 0), y = __dredd_replace_expr_int(0, 6);
    if (!__dredd_enabled_mutation(95)) { if (__dredd_replace_expr_bool(__dredd_replace_binary_operator_LOr_arg1_bool_arg2_bool(__dredd_replace_expr_bool(__dredd_replace_binary_operator_EQ_arg1_int_arg2_int(__dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(y, 12), 14) , __dredd_replace_expr_int(0, 20), 26), 33) , [&]() -> bool { return static_cast<bool>(__dredd_replace_expr_bool(__dredd_replace_binary_operator_GT_arg1_int_arg2_int(__dredd_replace_expr_int(__dredd_replace_binary_operator_Div_arg1_int_arg2_int(__dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(x, 36), 38) , __dredd_replace_expr_int(__dredd_replace_expr_int_lvalue(y, 44), 46), 52), 58) , __dredd_replace_expr_int(0, 64), 70), 77)); }, 80), 85)) {
        if (!__dredd_enabled_mutation(94)) { return __dredd_replace_expr_int(0, 88); }
    } }
    if (!__dredd_enabled_mutation(102)) { return __dredd_replace_expr_int(1, 96); }
}