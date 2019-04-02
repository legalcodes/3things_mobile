import 'package:flutter/material.dart';
import "quotes.dart";
import "persist.dart";
import 'package:threethings/screens/title.dart';
import 'package:threethings/screens/home.dart';


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




