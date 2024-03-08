class Rectangle {
  double width;
  double height;

  Rectangle(this.width, this.height);

  double calculateArea() {
    return width * height;
  }

  double calculatePerimeter() {
    return 2 * (width + height);
  }
}

void main() {
  
  Rectangle rectangle = Rectangle(25.0, 50.0);

  double area = rectangle.calculateArea();
  double perimeter = rectangle.calculatePerimeter();

  print('Rectangle:');
  print('Width: ${rectangle.width}');
  print('Height: ${rectangle.height}');
  print('Area: $area');
  print('Perimeter: $perimeter');
}