import 'package:provider/provider.dart';

import 'package:flutter/material.dart';

import '../../configuration/ReceipeImage.dart';
import '../../../models/Meals.dart';
import './RecepieName.dart';

class RecepieStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Meal item = Provider.of<Meal>(context);

    return Stack(
      children: <Widget>[
        RecepieImage(item.imageUrl),
        RecepieName(item.title),
      ],
    );
  }
}
