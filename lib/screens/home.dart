import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:threethings/screens/title.dart';
import 'package:threethings/screens/quote.dart';
import 'package:threethings/screens/threethings.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SplitTitle(),
              Quote(),
              ThreeThings(),
            ],
          ),
        )
    );
  }
}
