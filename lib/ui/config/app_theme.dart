import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  primaryColor: Color(0xFF4ED250),
  primarySwatch: Colors.green,
  backgroundColor: Color(0xFF4ED250),
  scaffoldBackgroundColor: Colors.white,
  textTheme: _textTheme,
  // buttonColor: Color(0xFF4ED250)
);

TextTheme _textTheme = TextTheme(
  headline5: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
  headlineSmall: TextStyle(fontSize: 10, fontWeight: FontWeight.w700)
);