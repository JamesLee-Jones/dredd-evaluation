#include <fstream>
#include <iostream>

int main(int argc, char* argv[]) {
  if (argc != 2) return 1; // Only accept file name.

  std::ifstream file(argv[1]);
  if (!file) return 1;

  int index;
  if (!(file >> index)) return 1;
  int array[1000] = {0};

  if (index >= 0 && index <= 1000) {
    std::cout << array[index] << std::endl;
  }
  return 0;
}

