import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './properties/MySliverGrid.dart';
import './CategoryItem.dart';
import './dummyData.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: DUMMY_CATEGORIES
          .map((category) => CategoryItem(
                id: category.id,
                title: category.title,
                color: category.color,
              ))
          .toList(),
      gridDelegate: const MySliverGrid(),
    );
  }
}
