import 'package:flutter/material.dart';
import '../Ingredients/IngredientsListView.dart';
import '../../../../models/Meals.dart';

class StepsListView extends IngredientsListView {
  final Meal item;

  StepsListView(this.item) : super(item);

  Color getCardColor(BuildContext context) {
    return Theme.of(context).primaryColor;
  }

  List<String> get list {
    return item.steps;
  }
}
