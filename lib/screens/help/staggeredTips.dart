import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class staggeredTips extends StatefulWidget {
  @override
  _staggeredTipsState createState() => _staggeredTipsState();
}

class _staggeredTipsState extends State<staggeredTips> {
  String _current;
  // length = 10
  List tips = [
    'Shaping our lives is difficult.',
    'Five minutes. Three things. Let\'s do this.',
    'Take a deep breath.',
    'Think about three things you *really* want to get done today.',
    'If this were the only thing I accomplished today, would I be satisfied?',
    'Will moving this forward make all other TODOs unimportant or easier to accomplish?',
    'Block out 2-3 HOURS to focus on ONE of them for today. This is ONE BLOCK OF TIME',
    'If you get distracted or can\'t make progress today, don\'t freak out.',
    'gently come back tomorrow and focus on your one TO-DO',
    'Congratulations! That’s it.',
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 100),
      child: Row(
          children: [
            Text('hi')
          ]
      );
    );
  }
}
