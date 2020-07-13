import 'package:flutter/material.dart';

import './recepies/MyRecepies.dart';
import './utility/DefaultPage.dart';

class RecepiesPage extends StatelessWidget {
  static const String routeName = '/recepies';

  RecepiesPage();

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> routeArguments =
        ModalRoute.of(context).settings.arguments;

    final String title = routeArguments["title"];
    final String categoryId = routeArguments["id"];

    return DefaultPage(pageTitle: title, pageBody: MyRecepies(categoryId));
  }
}
