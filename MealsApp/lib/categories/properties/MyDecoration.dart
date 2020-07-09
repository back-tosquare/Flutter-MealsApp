import 'package:flutter/material.dart';

import './MyGradient.dart';

class MyDecoration extends BoxDecoration {
  final Color color;

  MyDecoration(this.color)
      : super(
          gradient: MyGradient(color),
          borderRadius: BorderRadius.circular(15),
        );
}
