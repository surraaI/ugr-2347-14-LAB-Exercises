void main() {
  List<String> hobbies = ['Reading', 'Painting', 'Cooking'];

  // Add a hobby to the list
  hobbies.add('Gardening');
  print(hobbies); 

  // Remove a hobby from the list
  hobbies.remove('Painting');
  print(hobbies); // Output: [Reading, Cooking, Gardening]

  // Sort the list in alphabetical order
  hobbies.sort();
  print(hobbies); // Output: [Cooking, Gardening, Reading]

  bool isEmpty = hobbies.isEmpty;
  print('Is the list empty? $isEmpty'); // Output: Is the list empty? false
}