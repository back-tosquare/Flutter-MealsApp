import 'package:flutter/material.dart';

import './recepies/MyRecepies.dart';

class RecepiesPage extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  RecepiesPage({@required this.title, @required this.id, @required this.color});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: MyRecepies(),
    );
  }
}
