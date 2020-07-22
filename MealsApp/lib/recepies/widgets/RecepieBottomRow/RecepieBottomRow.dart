import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import '../../../models/Meals.dart';
import '../../configuration/BottomRowItem.dart';
import '../../configuration/RecepieConfig.dart';

class RecepieBottomRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Meal item = Provider.of<Meal>(context);

    final String complexity = RecepieConfig.getComplexity(item);
    final String affordability = RecepieConfig.getAffordability(item);
    final IconData favIcon =
        (item.isFavourite) ? Icons.favorite : Icons.favorite_border;

    return Container(
      padding: EdgeInsets.only(top: 15, bottom: 15, left: 5, right: 5),
      child: Row(
        children: <Widget>[
          BottomRowItem(icon: Icons.schedule, text: "${item.duration} min"),
          BottomRowItem(icon: Icons.work, text: complexity),
          BottomRowItem(icon: Icons.attach_money, text: affordability),
          BottomRowItem(
            icon: favIcon,
            text: "Favourite",
            onTapHandler: item.toggleFavourite,
          ),
        ],
      ),
    );
  }
}
