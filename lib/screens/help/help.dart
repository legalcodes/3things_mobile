import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: GestureDetector(
        onTap: () {
          Navigator.pop(context,);
        },
        child: RichText(
            text: TextSpan(
              text: 'Go Back',
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey,
              ),
            )
        ),
      )
    );
  }
}
