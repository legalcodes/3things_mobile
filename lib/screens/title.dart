import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class SplitTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(top: 48),
      child: RichText(
        text: TextSpan(
          text:'3',
          style: TextStyle(
            fontFamily: 'AlfaSlabOne',
            fontSize: 70,
            color: Colors.grey,
          ),
          children: <TextSpan>[
            TextSpan(
                text: 'THINGS',
                style: TextStyle(
                  color: Colors.blueGrey,
                )
            ),
          ],
        ),
      ),
    );
  }
}
