import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import '../../models/Meals.dart';
import '../widgets/RecepieStack/RecepieStack.dart';
import '../configuration/RecepieCard.dart';
import '../widgets/RecepieBottomRow/RecepieBottomRow.dart';
import '../../RecepieDetailsPage.dart';

class RecepieItem extends StatelessWidget {
  void onTapHandler(BuildContext context, Meal item) {
    Navigator.of(context).pushNamed(
      RecepieDetailsPage.routeName,
      arguments: {"id": item.id},
    );
  }

  @override
  Widget build(BuildContext context) {
    Meal item = Provider.of<Meal>(context, listen: false);

    return RecepieCard(
      onTapHandler: null,
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () => onTapHandler(context, item),
            child: RecepieStack(),
          ),
          RecepieBottomRow(),
        ],
      ),
    );
  }
}
