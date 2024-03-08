import 'dart:math';

abstract class Shape {
  double calculateArea();
}

class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double calculateArea() {
    return pi * radius * radius;
  }
}

class Square extends Shape {
  double side;

  Square(this.side);

  @override
  double calculateArea() {
    return side * side;
  }
}

void main() {
  Circle circle = Circle(5.0);
  double circleArea = circle.calculateArea();

  Square square = Square(4.0);
  double squareArea = square.calculateArea();

  print('Circle:');
  print('Radius: ${circle.radius}');
  print('Area: $circleArea');

  print('Square:');
  print('Side: ${square.side}');
  print('Area: $squareArea');
}