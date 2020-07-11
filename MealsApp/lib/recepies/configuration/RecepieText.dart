import 'package:flutter/material.dart';

class RecepieText extends StatelessWidget {
  final String name;

  RecepieText(this.name);
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontSize: 26,
        color: Colors.white70,
      ),
      softWrap: true,
      overflow: TextOverflow.fade,
    );
  }
}
