import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  final String text;
  final Color color;

  CardView({@required this.text, @required this.color});
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Text(text),
        padding: EdgeInsets.all(5),
      ),
      color: color,
      elevation: 4,
    );
  }
}
