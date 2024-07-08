#include <string>

void foo() {}

int main(int argc, char *argv[]) {
    // Perform argument checking.
    int index = std::stoi(argv[1]);
    int array[1000];
    if (index >= 0 && index <= 1000) {
        array[index];
    }
    return 0;
}