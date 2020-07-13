import 'package:flutter/material.dart';

import './RecepieDetailImage.dart';
import '../../../models/Meals.dart';
import './RecepieDetailHeading.dart';
import './Ingredients/IngredientsListView.dart';
import './Steps/StepsListView.dart';

class RecepieDetail extends StatelessWidget {
  final Meal item;

  RecepieDetail(this.item);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          RecepieDetailImage(item),
          RecepieDetailHeading("Ingredients"),
          IngredientsListView(item),
          RecepieDetailHeading("Steps"),
          StepsListView(item),
        ],
      ),
    );
  }
}
