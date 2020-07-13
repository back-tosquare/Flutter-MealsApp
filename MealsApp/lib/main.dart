import 'package:flutter/material.dart';

import './HomePage.dart';
import './utility/GeneralTheme.dart';
import './RecepiesPage.dart';
import './RecepieDetailsPage.dart';
import './utility/MyConfigurations.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final String title = "Meals App";

  @override
  Widget build(BuildContext context) {
    MyConfigurations().setDeviceOrientation();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: title,
      theme: MyTheme().getThemeData(),
      routes: {
        '/': (_) => HomePage(),
        RecepiesPage.routeName: (_) => RecepiesPage(),
        RecepieDetailsPage.routeName: (_) => RecepieDetailsPage(),
      },
    );
  }
}
