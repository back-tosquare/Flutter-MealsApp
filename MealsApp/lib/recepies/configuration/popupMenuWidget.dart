import 'package:flutter/material.dart';

import '../../models/Meals.dart';

class PopupMenuWidget extends StatelessWidget {
  final Function selectedHandler;

  PopupMenuWidget({@required this.selectedHandler});
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(Icons.more_vert),
      itemBuilder: (_) => [
        PopupMenuItem(
          child: Text("Show Favourite"),
          value: Selection.Favourites,
        ),
        PopupMenuItem(
          child: Text("Show All"),
          value: Selection.All,
        ),
      ],
      onSelected: (Selection value) {
        selectedHandler(value);
      },
    );
  }
}
