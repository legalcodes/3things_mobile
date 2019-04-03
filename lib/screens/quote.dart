import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:threethings/quotes.dart';

class Quote extends StatefulWidget {
  @override
  _QuoteState createState() => _QuoteState();
}

class _QuoteState extends State<Quote> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    var quote = randomQuote();

    final controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2)
    );

    final animation = Tween(
      begin: 0.0,
      end: 1.0,
    ).animate(controller);

    controller.forward();

    return FadeTransition(
      opacity: animation,
     child: Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(left:18, right:18),
      child: Text(
        '${quote}',
      ),
    )
    );
  }
}
