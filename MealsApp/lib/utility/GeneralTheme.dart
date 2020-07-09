import 'package:flutter/material.dart';

class MyTheme {
  ThemeData getThemeData() {
    return ThemeData(
      textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      primaryColor: Colors.blueAccent,
      primarySwatch: Colors.green,
      secondaryHeaderColor: Colors.green,
    );
  }
}
