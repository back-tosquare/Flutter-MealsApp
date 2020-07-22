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
      primaryColor: Colors.purple,
      primarySwatch: Colors.blue,
      secondaryHeaderColor: Colors.green,
      accentColor: Colors.amber,
      primaryColorDark: Colors.black,
      primaryColorLight: Colors.white,
      backgroundColor: Colors.purple[300],
      splashColor: Colors.amberAccent,
    );
  }
}
