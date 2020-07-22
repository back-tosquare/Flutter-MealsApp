import 'package:flutter/material.dart';

import './recepies/MyRecepies.dart';
import './utility/DefaultPage.dart';
import './recepies/configuration/popupMenuWidget.dart';
import './models/Meals.dart';

class RecepiesPage extends StatefulWidget {
  static const String routeName = '/recepies';

  @override
  _RecepiesPageState createState() => _RecepiesPageState();
}

class _RecepiesPageState extends State<RecepiesPage> {
  bool _favStatus = false;

  void toggleFavouriteStatusHandler(Selection value) {
    setState(() {
      _favStatus = (value == Selection.Favourites) ? true : false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Map<String, Object> routeArguments =
        ModalRoute.of(context).settings.arguments;

    final String title = routeArguments["title"];
    final String categoryId = routeArguments["id"];

    return DefaultPage(
      pageTitle: title,
      pageBody: MyRecepies(categoryId, _favStatus),
      popupMenuWidget: PopupMenuWidget(
        selectedHandler: toggleFavouriteStatusHandler,
      ),
    );
  }
}
