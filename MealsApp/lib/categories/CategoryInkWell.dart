import 'package:flutter/material.dart';

import './CategoryItem.dart';

class CategoryInkWell extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  final BorderRadius boderRadius = BorderRadius.circular(15);

  CategoryInkWell(
      {@required this.title, @required this.color, @required this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: CategoryItem(
          title: title, color: color, id: id, borderRadius: boderRadius),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: boderRadius,
      onTap: () {},
    );
  }
}
