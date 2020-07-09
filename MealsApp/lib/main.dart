import 'package:flutter/material.dart';

import './HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String title = "Meals App";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: ThemeData(
        textTheme: TextTheme(
          headline6: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        primaryColor: Colors.blueAccent,
        primarySwatch: Colors.green,
      ),
      home: HomePage(title),
    );
  }
}
