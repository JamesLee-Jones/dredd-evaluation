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

static int __dredd_replace_binary_operator_Add_arg1_int_arg2_int(int arg1, int arg2, int local_mutation_id) {
  if (!__dredd_some_mutation_enabled) return arg1 + arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 0)) return arg1 / arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 1)) return arg1 * arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 2)) return arg1 % arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 3)) return arg1 - arg2;
  if (__dredd_enabled_mutation(local_mutation_id + 4)) return arg1;
  if (__dredd_enabled_mutation(local_mutation_id + 5)) return arg2;
  return arg1 + arg2;
}

int main() {
    if (!__dredd_enabled_mutation(24)) { __dredd_replace_expr_int(__dredd_replace_binary_operator_Add_arg1_int_arg2_int(__dredd_replace_expr_int(1, 0) , __dredd_replace_expr_int(2, 6), 12), 18); }
}