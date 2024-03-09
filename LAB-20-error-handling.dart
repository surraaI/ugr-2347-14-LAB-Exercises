double divideNumbers(double a, double b) {
  if (b == 0) {
    throw Exception("Error: Division by zero is not allowed.");
  }
  return a / b;
}

void main() {
  double a = 10;
  double b = 0;

  try {
    double result = divideNumbers(a, b);
    print("Result: $result");
  } catch (e) {
    print(e.toString());
  }
}