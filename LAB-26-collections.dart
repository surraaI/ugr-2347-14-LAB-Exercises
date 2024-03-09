class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }
    int sum = marks.reduce((a, b) => a + b);
    return sum / marks.length;
  }
}

void main() {
  Student sura = Student('John', [80, 75, 90, 85, 95]);
  double suraAverageMark = sura.calculateAverageMark();
  print('${sura.name} average mark: $suraAverageMark');
}