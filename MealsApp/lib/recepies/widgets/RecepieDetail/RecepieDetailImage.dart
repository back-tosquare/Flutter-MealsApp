import 'package:flutter/material.dart';

import '../../../models/Meals.dart';

class RecepieDetailImage extends StatelessWidget {
  final Meal item;

  RecepieDetailImage(this.item);

  @override
  Widget build(BuildContext context) {
    return Image.network(
      item.imageUrl,
      fit: BoxFit.cover,
      width: double.infinity,
      height: 300,
    );
  }
}
