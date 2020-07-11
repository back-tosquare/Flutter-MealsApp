import 'package:flutter/material.dart';

import '../../configuration/ReceipeImage.dart';
import '../../../models/Meals.dart';
import './RecepieName.dart';

class RecepieStack extends StatelessWidget {
  final Meal item;

  RecepieStack(this.item);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        RecepieImage(item.imageUrl),
        RecepieName(item.title),
      ],
    );
  }
}
