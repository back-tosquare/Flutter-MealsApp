import 'package:flutter/material.dart';

import './recepies/MyRecepies.dart';

class RecepiesPage extends StatelessWidget {
  RecepiesPage();

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> routeArguments =
        ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(routeArguments["title"]),
      ),
      body: MyRecepies(),
    );
  }
}
