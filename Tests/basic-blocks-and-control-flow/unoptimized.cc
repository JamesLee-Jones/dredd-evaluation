int test(volatile int x, volatile int y) {
  return x + y;
}

int main() {
	int x = 0;
	int y = 0;
  test(x, y);
}
