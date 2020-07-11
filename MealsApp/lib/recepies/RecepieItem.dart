import 'package:flutter/material.dart';

import '../models/Meals.dart';
import './widgets/RecepieStack/RecepieStack.dart';
import './configuration/RecepieCard.dart';
import './widgets/RecepieBottomRow/RecepieBottomRow.dart';

class RecepieItem extends StatelessWidget {
  final Meal item;

  RecepieItem(this.item);

  @override
  Widget build(BuildContext context) {
    return RecepieCard(
      Column(
        children: <Widget>[
          RecepieStack(item),
          RecepieBottomRow(item),
        ],
      ),
    );
  }
}
