import 'dart:async';

void main() {
  loadDataFromDatabase().then((data) {
    print('Data loaded successfully:');
    print(data);
  }).catchError((error) {
    print('Error occurred while loading data:');
    print(error);
  });
}

Future<List<String>> loadDataFromDatabase() async {
  await Future.delayed(Duration(seconds: 2));
  List<String> data = ['Sura', 'Kayo', 'Bona', 'Obsa'];

  return data;
}