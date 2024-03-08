import 'dart:io';

void main() {
  print('Enter a number:');
  String? numberInput = stdin.readLineSync();
  int? number = int.tryParse(numberInput ?? '');

  if (number != null) {
    if (number % 2 == 0) {
      print('The number is even.');
    } else {
      print('The number is odd.');
    }
  } else {
    print('Invalid input. Please enter a valid number.');
  }
}