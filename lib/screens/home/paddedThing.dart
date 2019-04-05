import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:threethings/screens/home/thingNumber.dart';

class PaddedThing extends StatelessWidget {
  final Function inputHandler;
  final Function onTapNum;
  final Map tapped;
  final String data;
  final String num;

  PaddedThing({
    this.onTapNum,
    this.tapped,
    this.data,
    this.num,
    Key key,
    @required this.inputHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double ROW_PADDING_TOP = 50;

    return Padding(
      padding: EdgeInsets.only(top: ROW_PADDING_TOP),
      child: Row(
          children: [
            ThingNumber(text: num, onTapNum: onTapNum),
            new Flexible(
              child: ThingField(
                  onChanged: inputHandler,
                  data: data,
                  tapped: tapped,
                  num: num)),
          ]),
    );
  }
}

class ThingField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String data;
  final String num;
  final Map tapped;

  ThingField({
    @required this.onChanged,
    this.tapped,
    this.data,
    this.num,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isTapped = tapped[this.num];
    TextStyle textStyle;
    TextEditingController controller = TextEditingController(text: data);
    if (isTapped) {
      textStyle = TextStyle(
          decoration: TextDecoration.lineThrough,
          color: Colors.grey);
    } else {
      textStyle = TextStyle();
    }

    return GestureDetector(
      child: TextField(
        onChanged: this.onChanged,
        controller: controller,
        style: textStyle,
      ),
    );
  }

}
