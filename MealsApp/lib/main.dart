import 'package:flutter/material.dart';

import './HomePage.dart';
import './utility/GeneralTheme.dart';

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
      theme: MyTheme().getThemeData(),
      home: HomePage(),
    );
  }
}
