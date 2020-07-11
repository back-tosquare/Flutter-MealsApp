import 'package:flutter/material.dart';

import './RecepieConfig.dart';

class RecepieImage extends StatelessWidget {
  final String url;

  RecepieImage(this.url);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(RecepieConfig.itemBorderRadius),
        topRight: Radius.circular(RecepieConfig.itemBorderRadius),
      ),
      child: Image.network(
        url,
        height: 250,
        fit: BoxFit.cover,
        width: double.infinity,
      ),
    );
  }
}
