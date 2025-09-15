#include <iostream>
#include <limits>

volatile int no_op = 0;

int sub(int x, int y) {
  int result = x - y;
  if (f(x, y) || x * y != x - y) {
    no_op++;
  }
  return result;
}

int main() {
  //std::cout << sub(4, 2) << std::endl;
  int max_int = std::numeric_limits<int>::max();
  std::cout << sub(max_int, max_int) << std::endl;
}

