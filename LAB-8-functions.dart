import 'dart:math';

bool isPrime(int number) {
  if (number <= 1) {
    return false;
  }

  if (number == 2) {
    return true;
  }

  if (number % 2 == 0) {
    return false;
  }

  for (int i = 3; i <= sqrt(number); i += 2) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

void main() {
  print('Prime numbers between 1 and 50:');
  for (int number = 1; number <= 50; number++) {
    if (isPrime(number)) {
      print(number);
    }
  }
}