import 'dart:async';
import 'dart:math';

Future<String> fetchQuote() async {

  await Future.delayed(Duration(seconds: 2));

  List<String> quotes = [
    "Be yourself; everyone else is already taken.",
    "Two things are infinite: the universe and human stupidity; and I'm not sure about the universe.",
    "In three words I can sum up everything I've learned about life: it goes on.",
    "The only way to do great work is to love what you do.",
    "Don't cry because it's over, smile because it happened."
  ];

  Random random = Random();
  int index = random.nextInt(quotes.length);
  return quotes[index];
}

void main() async {
  String quote = await fetchQuote();
  print('Random Quote: $quote');
}