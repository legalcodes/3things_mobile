import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:threethings/screens/help/backButton.dart';
import 'package:threethings/screens/help/staggeredTips.dart';

class Help extends StatefulWidget {
  @override
  _HelpState createState() => _HelpState();
}

class _HelpState extends State<Help> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
        body: SafeArea(
        child: Container(
          decoration: new BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            children: [
              Row(
                  children: [
                    backButton(),
                  ]
              ),
              // Shaping our lives is difficult.
              // Five minutes. Three things. Let's do this.
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    staggeredTips(),
                  ]
              ),
              // Take a deep breath.
              // Think about three things you *really* want to get done today.
              // If this were the only thing I accomplished today, would I be satisfied?
              Row(
                  children: [
                  ]
              ),
              // Will moving this forward make all other TODOs unimportant or easier to accomplish?
              Row(
                  children: [
                  ]
              ),
              // Block out 2-3 HOURS to focus on ONE of them for today. This is ONE BLOCK OF TIME
              // If you get distracted or can't make progress today, don't freak out.
              // gently come back tomorrow and focus on your one TO-DO
              // Congratulations! That’s it.
            ]
          )
        ),
      )
    );
  }
}
