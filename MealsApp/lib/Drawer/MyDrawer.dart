import 'package:flutter/material.dart';

import './DrawerImage.dart';
import './DrawerList.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 4,
      child: Container(
        color: Theme.of(context).primaryColor,
        child: Column(
          children: <Widget>[
            DrawerImage(),
            DrawerList(),
          ],
        ),
      ),
    );
  }
}
