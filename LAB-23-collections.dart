import 'dart:math';

void main() {
  List<int> numbers = List.generate(10, (_) => Random().nextInt(10));
  print('Original numbers: $numbers');

  Set<int> uniqueNumbers = Set<int>.from(numbers);
  print('Unique numbers: $uniqueNumbers');
}