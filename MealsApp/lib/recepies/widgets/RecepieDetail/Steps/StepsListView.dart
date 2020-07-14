import 'package:flutter/material.dart';

import '../Ingredients/IngredientsListView.dart';
import '../../../../models/Meals.dart';
import './StepsCardView.dart';

class StepsListView extends IngredientsListView {
  final Meal item;

  StepsListView(this.item) : super(item);

  Widget getCardWidget(
      {@required BuildContext context,
      @required String text,
      @required int index}) {
    return Column(
      children: <Widget>[
        StepsCardView(
          index: index,
          text: text,
          color: Theme.of(context).primaryColor,
        ),
        Divider(
          thickness: 1,
          color: Theme.of(context).primaryColorDark,
        ),
      ],
    );
  }

  List<String> get list {
    return item.steps;
  }
}
