import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final String destination;

  ListItem({@required this.icon, @required this.text, this.destination});

  void onTapHandler(BuildContext context) {
    Navigator.of(context).pushNamed(destination);
  }

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
      onTap: () => (destination != null) ? onTapHandler(context) : null,
    );
  }
}
