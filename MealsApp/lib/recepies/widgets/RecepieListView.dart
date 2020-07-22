import 'package:provider/provider.dart';

import 'package:flutter/material.dart';
import '../../models/Meals.dart';
import './RecepieItem.dart';

class RecepieListView extends StatelessWidget {
  final List<Meal> filteredMeals;

  RecepieListView(this.filteredMeals);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return ChangeNotifierProvider.value(
          value: filteredMeals[index],
          child: RecepieItem(),
        );
      },
      itemCount: filteredMeals.length,
    );
  }
}
