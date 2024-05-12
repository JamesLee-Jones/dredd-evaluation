volatile int z = 0;

int main() {
  volatile int x = 0;
  if (x > 0) {
    z++; 
    z++;
  }
}
