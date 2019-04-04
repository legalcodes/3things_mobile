import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';
import 'package:threethings/screens/thingNumber.dart';

class PaddedThing extends StatelessWidget {
  final Function inputHandler;
  final Function onTapNum;
  final String data;
  final String num;

  PaddedThing({
    this.onTapNum,
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
              child: ThingField(onChanged: inputHandler, data: data),),
          ]),
    );
  }
}

class ThingField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String data;

  ThingField({
    @required this.onChanged,
    this.data,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController(text: data);

    return GestureDetector(
      child: TextField(
        onChanged: this.onChanged,
        controller: controller,
      ),
    );
  }

}
