import 'package:flutter/material.dart';

import './implementation/InkWellUtility.dart';
import '../CategoryItem.dart';

class CategoryInkWell extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  final BorderRadius borderRadius = BorderRadius.circular(15);

  CategoryInkWell(
      {@required this.title, @required this.color, @required this.id});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => InkWellUtility()
          .onTapHandler(context: context, id: id, title: title, color: color),
      child: CategoryItem(
          title: title, color: color, id: id, borderRadius: borderRadius),
      splashColor: Theme.of(context).primaryColor,
    );
  }
}
