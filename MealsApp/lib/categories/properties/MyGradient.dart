import 'package:flutter/material.dart';

class MyGradient extends LinearGradient {
  final Color color;

  MyGradient(this.color)
      : super(
          colors: [
            color.withOpacity(0.7),
            color,
          ],
        );
}
