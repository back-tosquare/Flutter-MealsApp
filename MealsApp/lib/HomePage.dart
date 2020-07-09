import 'package:flutter/material.dart';

import './categories/CategoriesScreen.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Categories"),
      ),
      body: CategoriesScreen(),
    );
  }
}
