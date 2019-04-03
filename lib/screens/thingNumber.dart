import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ThingNumber extends StatelessWidget {
  final String text;

  ThingNumber({
    this.text,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.only(right:24),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: 'AlfaSlabOne',
            fontSize: 38,
             color: Colors.grey,
          ),
        )
    );
  }
}


