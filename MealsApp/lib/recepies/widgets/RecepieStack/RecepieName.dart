import 'package:flutter/material.dart';

import '../../configuration/RecepieText.dart';

class RecepieName extends StatelessWidget {
  final String text;

  RecepieName(this.text);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Container(
        child: RecepieText(text),
        width: 220,
        color: Colors.black54,
        padding: EdgeInsets.all(10),
      ),
      bottom: 20,
      right: 10,
    );
  }
}
