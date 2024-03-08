import 'dart:io';

void main() {
  print('Enter the grade:');
  String? gradeInput = stdin.readLineSync();
  int? grade = int.tryParse(gradeInput ?? '');

  if (grade != null) {
    String letterGrade;

    switch (grade) {
      case >= 83:
        letterGrade = 'A';
        break;
      case >= 68:
        letterGrade = 'B';
        break;
      case >= 50:
        letterGrade = 'C';
        break;
      case >= 40:
        letterGrade = 'D';
        break;
      default:
        letterGrade = 'F';
    }
    print('Your Grade is: $letterGrade');
  } else {
    print('Invalid input. Please enter a valid grade.');
  }
}