import 'package:flutter/material.dart';

class StepsCardView extends StatelessWidget {
  final String text;
  final int index;
  final Color color;

  StepsCardView(
      {@required this.text, @required this.index, @required this.color});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        child: Text("#${index + 1}"),
        backgroundColor: color,
      ),
      title: Text(text),
    );
  }
}
