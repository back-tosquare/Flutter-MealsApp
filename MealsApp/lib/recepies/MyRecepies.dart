import 'package:flutter/material.dart';

import '../dummyData.dart';
import '../models/Meals.dart';
import './RecepieItem.dart';

class MyRecepies extends StatelessWidget {
  final String categoryId;

  MyRecepies(this.categoryId);

  @override
  Widget build(BuildContext context) {
    List<Meal> myMeals = DUMMY_MEALS
        .where((element) => element.categories.contains(categoryId))
        .toList();

    return ListView.builder(
      itemBuilder: (ctx, index) {
        return RecepieItem(myMeals[index]);
      },
      itemCount: myMeals.length,
    );
  }
}
