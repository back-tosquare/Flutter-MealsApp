import 'package:flutter/material.dart';

class DrawerImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/drawer_bg.jpg',
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    );
  }
}
