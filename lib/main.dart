import 'package:flutter/material.dart';
import "quotes.dart";
import "persist.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '3Things',
      // Set AlfaSlabOne as the default app font
      theme: ThemeData(fontFamily: 'AlfaSlabOne'),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Title(),
            Quote(),
            ThreeThings(),
          ],
        ),
        )
      );
  }
}

class Title extends StatelessWidget {
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

class Quote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var quote = randomQuote();
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.only(left:18, right:18),
      child: Text(
        '${quote}',
      ),
    );
  }
}

class ThreeThings extends StatefulWidget {
  @override
  _ThreeThingsState createState() => _ThreeThingsState();

}

class _ThreeThingsState extends State<ThreeThings> {
  var thingsMap = {
    1: '',
    2: '',
    3: ''
  };


  ValueChanged<String>_curryHandleInputChange(num fieldNum) {

    ValueChanged<String> handleInputChange = (newText) {
      print('# Setting state for thing $fieldNum : $newText');
      setState(() {
        thingsMap[fieldNum]= newText;
      });
      writeAndReadState(thingsMap.toString());
    };
    return handleInputChange;

  }
  //@override
  // initState  ->

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
