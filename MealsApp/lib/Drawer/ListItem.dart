import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final IconData icon;
  final String text;

  ListItem({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: Theme.of(context).accentColor,
      ),
      title: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).primaryColorLight,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
    );
  }
}
