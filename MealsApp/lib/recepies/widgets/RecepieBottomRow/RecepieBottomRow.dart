import 'package:flutter/material.dart';

import '../../../models/Meals.dart';
import '../../configuration/BottomRowItem.dart';
import '../../configuration/RecepieConfig.dart';

class RecepieBottomRow extends StatelessWidget {
  final Meal item;

  RecepieBottomRow(this.item);

  @override
  Widget build(BuildContext context) {
    final String complexity = RecepieConfig.getComplexity(item);
    final String affordability = RecepieConfig.getAffordability(item);

    return Container(
      padding: EdgeInsets.all(15),
      child: Row(
        children: <Widget>[
          BottomRowItem(icon: Icons.schedule, text: "${item.duration} min"),
          BottomRowItem(icon: Icons.work, text: complexity),
          BottomRowItem(icon: Icons.attach_money, text: affordability),
        ],
      ),
    );
  }
}
