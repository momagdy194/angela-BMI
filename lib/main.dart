import 'package:flutter/material.dart';
import 'package:calculator/screen/Inputpage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark().copyWith(
            primaryColor: Color(0xFF0A0E30),
            accentColor: Colors.deepPurple,
            scaffoldBackgroundColor: Color(0xFF0A0E30),
            textTheme: TextTheme(body1: TextStyle(color: Color(0xFFffffff)))),
        title: 'calculator',
        home: Inputpage());
  }
}
