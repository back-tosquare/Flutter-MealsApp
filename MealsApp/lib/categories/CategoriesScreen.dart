import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './properties/MySliverGrid.dart';
import './properties/GridChildren.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(15),
      children: gridChildren,
      gridDelegate: const MySliverGrid(),
    );
  }
}
