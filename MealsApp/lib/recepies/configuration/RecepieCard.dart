import 'package:flutter/material.dart';

import './RecepieConfig.dart';

class RecepieCard extends StatelessWidget {
  final Widget child;

  RecepieCard(this.child);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: child,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RecepieConfig.itemBorderRadius),
      ),
      margin: EdgeInsets.all(15),
      elevation: 4,
    );
  }
}
