import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:threethings/quotes.dart';

class Quote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var quote = randomQuote();
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(left:18, right:18),
      child: Text(
        '${quote}',
      ),
    );
  }
}
