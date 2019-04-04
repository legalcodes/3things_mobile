import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';

class ThingNumber extends StatefulWidget {
  final Function onTapNum;
  final String text;
  ThingNumber({ Key key, this.onTapNum, this.text, }) : super(key: key);

  @override
  _ThingNumberState createState() => _ThingNumberState(onTapNum: this.onTapNum, text: text);
}

class _ThingNumberState extends State<ThingNumber> with TickerProviderStateMixin {
  Animation<double> animation;
  AnimationController controller;
  final Function onTapNum;
  final String text;

  _ThingNumberState({ this.onTapNum, this.text,});

  @override
  void initState() {
    super.initState();

    controller = AnimationController(duration: const Duration(milliseconds: 80), vsync: this);
    animation = Tween<double>(begin: 30, end: 35).animate(controller)
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          controller.reverse(); }
      });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
//      padding: EdgeInsets.only(right: animation2.value,),
      padding: EdgeInsets.only(right: 24,),
      child: GestureDetector(
          onTap: () {
            setState(() {
              controller.forward();
            });
            return onTapNum(text);
          },
          child: Text(
            text,
            style: TextStyle(
              fontFamily: 'AlfaSlabOne',
              fontSize: animation.value,
              color: Colors.grey,
            ),
          )
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }
}
