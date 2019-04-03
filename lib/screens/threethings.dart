//import 'dart:async';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/material.dart';

class ThreeThings extends StatefulWidget {
  @override
  _ThreeThingsState createState() => _ThreeThingsState();

}

class _ThreeThingsState extends State<ThreeThings> {
  var thingsMap = { '1': '', '2': '', '3': '' };

  @override
  void initState() {
    super.initState();
    _loadThings();
  }

  //Loading counter value on start
  _loadThings() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      thingsMap['1'] = (prefs.getString('1') ?? '');
      thingsMap['2'] = (prefs.getString('2') ?? '');
      thingsMap['3'] = (prefs.getString('3') ?? '');
    });
  }

  _curryHandleInputChange(num fieldNum) {
    handleInputChange (newText) async {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      setState(() {
        thingsMap['$fieldNum'] = newText;
        prefs.setString('$fieldNum', thingsMap['$fieldNum']);
      });
    };
    return handleInputChange;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:24, right:24),
      child: Column(
          children: [
            ThingField(onChanged: _curryHandleInputChange(1), data: 'myValue'),
            ThingField(onChanged: _curryHandleInputChange(2), data: thingsMap['2']),
            ThingField(onChanged: _curryHandleInputChange(3), data: thingsMap['3']),
          ]
      ),
    );
  }
}

class ThingField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String data;

  ThingField({
    this.data,
    Key key,
    @required this.onChanged,
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
