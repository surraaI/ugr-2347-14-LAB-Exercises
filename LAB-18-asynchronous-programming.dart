import 'dart:convert';
import 'package:http/http.dart' as http;

void main() {
  fetchWeatherData().then((weatherData) {
    final temperature = weatherData['main']['temp'];
    final weatherCondition = weatherData['weather'][0]['description'];

    print('Current Temperature: $temperature');
    print('Weather Condition: $weatherCondition');
  }).catchError((error) {
    print('Error occurred while fetching weather data:');
    print(error);
  });
}

Future<Map<String, dynamic>> fetchWeatherData() async {
  final apiKey = 'API_KEY';
  final city = 'Addis Ababa'; 
  final url =
      'http://api.openweathermap.org/data/2.5/weather?q=$city&appid=$apiKey';

  final response = await http.get(Uri.parse(url));

  if (response.statusCode == 200) {
    final weatherData = jsonDecode(response.body);
    return weatherData;
  } else {
    throw Exception('Failed to fetch weather data: ${response.statusCode}');
  }
}