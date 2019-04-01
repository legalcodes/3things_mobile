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
  const ThreeThings({
    Key key,
    this.thing1: '',
    this.thing2: '',
    this.thing3: '',
  }) : super(key: key);

  final String thing1;
  final String thing2;
  final String thing3;

  _ThreeThingsState createState() => _ThreeThingsState();
}

class _ThreeThingsState extends State<ThreeThings> {
  String _thing1 = '';
  String _thing2 = '';
  String _thing3 = '';

  void setThing1(text) {
    setState(() { _thing1 = text; });
  }
  void setThing2(text) {
    setState(() { _thing2 = text; });
  }
  void setThing3(text) {
    setState(() { _thing3 = text; });
  }

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: EdgeInsets.only(left:24, right:24),
      child: Column(
        children: [
          TextFormField(),
          TextFormField(),
          TextFormField()
        ]
      ),
    );
  }
}


