import 'package:flutter/material.dart';
import 'package:threethings/screens/home/home.dart';
import 'package:threethings/screens/help/help.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/help': (context) => Help(),
      },
      title: '3Things',
      // Set AlfaSlabOne as the default app font
      theme: ThemeData(fontFamily: 'AlfaSlabOne'),
      home: Home(),
    );
  }
}
