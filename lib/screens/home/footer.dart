import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:threethings/screens/help/help.dart';

class Footer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 60),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/help');
        },
        child: RichText(
            text: TextSpan(
              text: 'Tips for Choosing',
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