import 'package:flutter/material.dart';

import './properties/MyDecoration.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;
  final BorderRadius borderRadius;

  CategoryItem(
      {@required this.title,
      @required this.color,
      @required this.id,
      @required this.borderRadius});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(
        title,
        style: Theme.of(context).textTheme.headline6,
      ),
      decoration: MyDecoration(color: color, borderRadius: borderRadius),
    );
  }
}
