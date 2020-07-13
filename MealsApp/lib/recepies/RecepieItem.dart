import 'package:flutter/material.dart';

import '../models/Meals.dart';
import './widgets/RecepieStack/RecepieStack.dart';
import './configuration/RecepieCard.dart';
import './widgets/RecepieBottomRow/RecepieBottomRow.dart';
import '../RecepieDetailsPage.dart';

class RecepieItem extends StatelessWidget {
  final Meal item;

  RecepieItem(this.item);

  void onTapHandler(BuildContext context) {
    Navigator.of(context).pushNamed(
      RecepieDetailsPage.routeName,
      arguments: {"id": item.id},
    );
  }

  @override
  Widget build(BuildContext context) {
    return RecepieCard(
      onTapHandler: () => onTapHandler(context),
      child: Column(
        children: <Widget>[
          RecepieStack(item),
          RecepieBottomRow(item),
        ],
      ),
    );
  }
}
