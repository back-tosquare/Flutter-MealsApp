import 'package:flutter/material.dart';

import './categories/CategoriesScreen.dart';
import './utility/DefaultPage.dart';

class HomePage extends StatelessWidget {
  Widget build(BuildContext context) {
    return DefaultPage(
      pageTitle: "My Categories",
      pageBody: CategoriesScreen(),
    );
  }
}
