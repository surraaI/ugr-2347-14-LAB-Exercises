class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

void main() {
  Person person1 = Person('Sura', 22, '6kilo');
  print('Person 1:');
  print('Name: ${person1.name}');
  print('Age: ${person1.age}');
  print('Address: ${person1.address}');

  person1.name = 'Updated Name';
  person1.age = 27;
  person1.address = 'Adama';

  print('\nPerson 1 (after modification):');
  print('Name: ${person1.name}');
  print('Age: ${person1.age}');
  print('Address: ${person1.address}');
}