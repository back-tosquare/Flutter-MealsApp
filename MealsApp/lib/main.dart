import 'package:flutter/material.dart';

import './HomePage.dart';
import './utility/GeneralTheme.dart';
import './RecepiesPage.dart';

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
      routes: {
        '/': (_) => HomePage(),
        '/recepies': (_) => RecepiesPage(),
      },
    );
  }
}
