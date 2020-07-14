import 'package:flutter/material.dart';

import '../../../../models/Meals.dart';
import '../Configuration/CardView.dart';
import '../Configuration/ListContainer.dart';

class IngredientsListView extends StatelessWidget {
  final Meal item;

  IngredientsListView(this.item);

  Widget getCardWidget(
      {@required BuildContext context,
      @required String text,
      @required int index}) {
    return CardView(
      text: text,
      color: Theme.of(context).accentColor,
    );
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
      childHandler: ({@required String text, @required int index}) {
        return getCardWidget(context: context, text: text, index: index);
      },
      list: list,
      height: height,
      width: width,
    );
  }
}
