import 'dart:io';

void main() {
  try {
    File file = File('file.txt');
    String contents = file.readAsStringSync();
    print("File contents: $contents");
  } catch (e) {
    print("Error: Failed to read the file. ${e.toString()}");
  }
}