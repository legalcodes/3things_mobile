import 'package:flutter/widgets.dart';
import 'package:threethings/persist.dart';
import 'package:flutter/material.dart';


class ThreeThings extends StatefulWidget {
  @override
  _ThreeThingsState createState() => _ThreeThingsState();

}

class _ThreeThingsState extends State<ThreeThings> {
  // initialize thingsMap from file
  var thingsMap = {
    1: '',
    2: '',
    3: ''
  };

  ValueChanged<String>_curryHandleInputChange(num fieldNum) {
    ValueChanged<String> handleInputChange = (newText) {
      setState(() { thingsMap[fieldNum]= newText; });
      writeAndReadState(thingsMap.toString());
    };
    return handleInputChange;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:24, right:24),
      child: Column(
          children: [
            ThingField(onChanged: _curryHandleInputChange(1), ),
            ThingField(onChanged: _curryHandleInputChange(2), ),
            ThingField(onChanged: _curryHandleInputChange(3), ),
          ]
      ),
    );
  }
}

class ThingField extends StatelessWidget {
  ThingField({Key key, @required this.onChanged})
      : super(key: key);

  final ValueChanged<String> onChanged;

  Widget build(BuildContext context) {
    return GestureDetector(
      child: TextField(
          onChanged: this.onChanged
      ),
    );
  }

}
