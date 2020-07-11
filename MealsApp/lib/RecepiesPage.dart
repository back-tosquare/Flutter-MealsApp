import 'package:flutter/material.dart';

import './recepies/MyRecepies.dart';

class RecepiesPage extends StatelessWidget {
  static const String routeName = '/recepies';

  RecepiesPage();

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> routeArguments =
        ModalRoute.of(context).settings.arguments;

    final String title = routeArguments["title"];
    final String categoryId = routeArguments["id"];

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: MyRecepies(categoryId),
    );
  }
}
