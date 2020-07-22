import 'package:flutter/material.dart';

import './ListItem.dart';
import '../HomePage.dart';
import '../FiltersPage.dart';

class DrawerList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          ListItem(
            icon: Icons.fastfood,
            text: "Meals",
            destination: HomePage.routeName,
          ),
          ListItem(
            icon: Icons.settings,
            text: "Filter",
            destination: FiltersPage.routeName,
          ),
        ],
      ),
    );
  }
}
