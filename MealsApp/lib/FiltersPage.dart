import 'package:flutter/material.dart';

import './utility/DefaultPage.dart';

class FiltersPage extends StatelessWidget {
  static const String routeName = '/filter';
  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      pageTitle: "Filters Page",
      pageBody: Center(
        child: Text("Filters Page"),
      ),
    );
  }
}
