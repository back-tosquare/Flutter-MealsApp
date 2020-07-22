import 'package:flutter/material.dart';

import './configuration/RecepieConfig.dart';
import '../models/Meals.dart';
import './widgets/RecepieListView.dart';

class MyRecepies extends StatelessWidget {
  final String categoryId;
  final bool favStatus;

  MyRecepies(this.categoryId, this.favStatus);

  @override
  Widget build(BuildContext context) {
    List<Meal> filteredMeals =
        RecepieConfig.getMealsList(favStatus, categoryId);

    return (filteredMeals.length > 0)
        ? RecepieListView(filteredMeals)
        : Center(
            child: Container(
              child: Text("No Items"),
            ),
          );
  }
}
