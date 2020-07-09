import 'package:flutter/material.dart';

import './properties/MyDecoration.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem({@required this.title, @required this.color, @required this.id});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      child: Text(title),
      decoration: MyDecoration(color),
    );
  }
}
