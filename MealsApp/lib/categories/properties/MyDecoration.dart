import 'package:flutter/material.dart';

import './MyGradient.dart';

class MyDecoration extends BoxDecoration {
  final Color color;
  final BorderRadius borderRadius;

  MyDecoration({@required this.color, @required this.borderRadius})
      : super(
          gradient: MyGradient(color),
          borderRadius: BorderRadius.circular(15),
        );
}
