void main() {
  int num = 17;
  bool isPrime = true;

  for (int i = 2; i < num; i++) {
    if (num % i == 0) {
      isPrime = false;
      break;
    }
  }
  if (isPrime) {
    print("$num is a Prime Number");
  } else {
    print("$num is Not a Prime Number");
  }
}
