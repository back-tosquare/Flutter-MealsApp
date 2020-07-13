import 'package:flutter/material.dart';

class MyTheme {
  ThemeData getThemeData() {
    return ThemeData(
      textTheme: TextTheme(
        headline6: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      primaryColor: Colors.blueAccent,
      primarySwatch: Colors.blue,
      secondaryHeaderColor: Colors.green,
      accentColor: Colors.amber,
    );
  }
}
