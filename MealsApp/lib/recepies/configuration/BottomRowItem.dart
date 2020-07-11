import 'package:flutter/material.dart';

class BottomRowItem extends StatelessWidget {
  final IconData icon;
  final String text;

  BottomRowItem({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 6),
          Text(text),
        ],
      ),
    );
  }
}
