class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

class Student extends Person {
  int rollNumber;
  List<double> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  double calculateTotalMarks() {
    double totalMarks = 0;
    for (double mark in marks) {
      totalMarks += mark;
    }
    return totalMarks;
  }

  double calculateAverageMarks() {
    if (marks.isEmpty) {
      return 0;
    }
    return calculateTotalMarks() / marks.length;
  }
}

void main() {
  Student student = Student('Sura Itana', 18, 'Addis Ababa', 101, [88, 90, 92, 88, 93]);

  print('Student:');
  print('Name: ${student.name}');
  print('Age: ${student.age}');
  print('Address: ${student.address}');
  print('Roll Number: ${student.rollNumber}');
  print('Marks: ${student.marks}');

  double totalMarks = student.calculateTotalMarks();
  double averageMarks = student.calculateAverageMarks();

  print('Total Marks: $totalMarks');
  print('Average Marks: $averageMarks');

  student.name = 'Abdi';
  student.age = 20;
  student.address = 'Adama';
  student.marks = [90, 95, 88, 92, 87];

  totalMarks = student.calculateTotalMarks();
  averageMarks = student.calculateAverageMarks();

  print('Modified Student:');
  print('Name: ${student.name}');
  print('Age: ${student.age}');
  print('Address: ${student.address}');
  print('Roll Number: ${student.rollNumber}');
  print('Marks: ${student.marks}');
  print('Total Marks: $totalMarks');
  print('Average Marks: $averageMarks');
}