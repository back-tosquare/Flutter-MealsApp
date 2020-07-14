import 'package:flutter/material.dart';

class MyBottomBar extends StatelessWidget {
  final Function(int) onTapHandler;
  final int currentIndex;

  MyBottomBar({@required this.onTapHandler, @required this.currentIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Theme.of(context).primaryColor,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.category),
          title: Text("Category"),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.favorite),
          title: Text("Favourites"),
        ),
      ],
      onTap: onTapHandler,
      currentIndex: currentIndex,
      selectedItemColor: Theme.of(context).accentColor,
      unselectedItemColor: Theme.of(context).primaryColorLight,
    );
  }
}
