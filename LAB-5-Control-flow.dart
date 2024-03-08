import 'dart:io';

void main() {
  print('Enter the first number:');
  String? firstNumberInput = stdin.readLineSync();
  double? firstNumber = double.tryParse(firstNumberInput ?? '');

  print('Enter the second number:');
  String? secondNumberInput = stdin.readLineSync();
  double? secondNumber = double.tryParse(secondNumberInput ?? '');

  if (firstNumber != null && secondNumber != null) {
    print('Enter the operation (+, -, *, /):');
    String? operation = stdin.readLineSync();

    double? result;
    switch (operation) {
      case '+':
        result = firstNumber + secondNumber;
        break;
      case '-':
        result = firstNumber - secondNumber;
        break;
      case '*':
        result = firstNumber * secondNumber;
        break;
      case '/':
        if (secondNumber != 0) {
          result = firstNumber / secondNumber;
        } else {
          print('Division by zero is not allowed.');
        }
        break;
      default:
        print('Error: Invalid operation.');
    }

    if (result != null) {
      print('Result: $result');
    }
  } else {
    print('Invalid input. Please enter valid numbers.');
  }
}