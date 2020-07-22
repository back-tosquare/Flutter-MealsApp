import 'package:flutter/material.dart';

class BottomRowItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final Function onTapHandler;

  BottomRowItem({@required this.icon, @required this.text, this.onTapHandler});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Row(
        children: <Widget>[
          GestureDetector(onTap: onTapHandler, child: Icon(icon)),
          SizedBox(width: 6),
          Text(text),
          SizedBox(width: 5),
        ],
      ),
    );
  }
}
