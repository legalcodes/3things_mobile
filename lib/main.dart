import 'package:flutter/material.dart';
import "quotes.dart";

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
  String _thing1 = '';
  String _thing2 = '';
  String _thing3 = '';

  void _handleInputChange1(String newText) {
    print('# Setting thing 1: $newText');
    setState(() { _thing1 = newText; });
  }
  void _handleInputChange2(String newText) {
    print('# Setting thing 2: $newText');
    setState(() { _thing2 = newText; });
  }
  void _handleInputChange3(String newText) {
    print('# Setting thing 3: $newText');
    setState(() { _thing3 = newText; });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left:24, right:24),
      child: Column(
        children: [
          firstThingField( onChanged: _handleInputChange1, ),
          secondThingField( onChanged: _handleInputChange2, ),
          thirdThingField( onChanged: _handleInputChange3, ),
        ]
      ),
    );
  }
}

class firstThingField extends StatelessWidget {
  firstThingField({Key key, @required this.onChanged})
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
