import 'package:flutter/material.dart';
import '../../../RecepiesPage.dart';

class InkWellUtility {
  final Function onTapHandler = (
      {@required BuildContext context,
      @required String id,
      @required String title,
      @required Color color}) {
    Navigator.of(context).push(MaterialPageRoute(builder: (_) {
      return RecepiesPage(
        id: id,
        title: title,
        color: color,
      );
    }));
  };
}
