import 'dart:math';

var quotes = [
"“Beware the barrenness of a busy life. —Socrates”",
"“Better a little which is well done, than a great deal imperfectly.” —Plato",
"“Pleasure in the job puts perfection in the work.” —Aristotle",
"“...do what’s essential. Do less, better. Because most of what we do or say is not essential. If you can eliminate it, you’ll have more tranquility.” —Marcus Aurelius",
"“Neither blame nor praise yourself.” —Plutarch",
"“It does not matter how slowly you go as long as you do not stop.” —Confucius",
"“Great acts are made up of small deeds.” —Lao Tzu",
"“Hard choices, good life. Easy choices, hard life.” -- Jerzy Gregorek"
];

String randomQuote () {
  var rnd = new Random();
  int min = 0;
  int max = quotes.length-1;
  return quotes[rnd.nextInt(max-min)];
}