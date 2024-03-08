import 'dart:io';
void main() {
  const int speedOfLight = 299792458; // meters per second
  
  print('Enter the distance (in meters):');
  String? distanceInput = stdin.readLineSync();
  double distance = double.parse(distanceInput ?? '0');
  double time = distance / speedOfLight;
  print('The time it takes for light to travel $distance meters is $time seconds.');
}