import 'package:MealsApp/utility/ErrorPage.dart';
import 'package:flutter/material.dart';

import './dummyData.dart';
import './models/Meals.dart';
import './utility/DefaultPage.dart';
import './recepies/widgets/RecepieDetail/RecepieDetail.dart';

class RecepieDetailsPage extends StatelessWidget {
  static const String routeName = '/recepieDetails';

  Widget build(BuildContext context) {
    final Map<String, Object> routeArguments =
        ModalRoute.of(context).settings.arguments;

    final String recepieId = routeArguments["id"];

    final Meal item = DUMMY_MEALS.firstWhere(
      (element) => element.id == recepieId,
      orElse: () => null,
    );

    return (item != null)
        ? DefaultPage(pageTitle: item.title, pageBody: RecepieDetail(item))
        : ErrorPage();
  }
}
