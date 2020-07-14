import 'package:flutter/material.dart';

import './ListItem.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListItem(
            icon: Icons.fastfood,
            text: "Meals",
          ),
          ListItem(
            icon: Icons.settings,
            text: "Filter",
          ),
        ],
      ),
    );
  }
}
