import 'package:flutter/material.dart';

import '../../../../models/Meals.dart';
import '../Configuration/CardView.dart';
import '../Configuration/ListContainer.dart';

class IngredientsListView extends StatelessWidget {
  final Meal item;

  IngredientsListView(this.item);

  Color getCardColor(BuildContext context) {
    return Theme.of(context).accentColor;
  }

  List<String> get list {
    return item.ingredients;
  }

  double get height {
    return 150;
  }

  double get width {
    return 300;
  }

  @override
  Widget build(BuildContext context) {
    return ListContainer(
      childHandler: (content) => CardView(
        text: content,
        color: getCardColor(context),
      ),
      list: list,
      height: height,
      width: width,
    );
  }
}
