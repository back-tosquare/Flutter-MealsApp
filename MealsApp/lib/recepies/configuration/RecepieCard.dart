import 'package:flutter/material.dart';

import './RecepieConfig.dart';

class RecepieCard extends StatelessWidget {
  final Widget child;
  final Function onTapHandler;

  RecepieCard({@required this.child, @required this.onTapHandler});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapHandler,
      child: Card(
        child: child,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RecepieConfig.itemBorderRadius),
        ),
        margin: EdgeInsets.all(15),
        elevation: 4,
      ),
    );
  }
}
