void main() {
  Map<String, int> studentMarks = {};

  studentMarks.putIfAbsent('Abdi', () => 80);
  studentMarks.putIfAbsent('Bona', () => 90);
  studentMarks.putIfAbsent('Eba', () => 75);
  
  studentMarks.forEach((name, marks) {
    print('$name: $marks');
  });

  bool isPresent = studentMarks.containsKey('Eba');
  print('Is Alice present? $isPresent');
}