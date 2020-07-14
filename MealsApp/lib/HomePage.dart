import 'package:flutter/material.dart';

import './categories/CategoriesScreen.dart';
import './utility/DefaultPage.dart';
import './utility/BottomNavigation/MyBottomBar.dart';
import './FavouritesPage.dart';
import './Drawer/MyDrawer.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, Object>> _pageMap = [
    {
      "page": CategoriesScreen(),
      "title": "My Categories",
    },
    {
      "page": FavouritesPage(),
      "title": "My Favourites",
    },
  ];

  int _selectedPageIndex = 0;

  void _bottomBarPageSwitcher(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return DefaultPage(
      pageTitle: _pageMap[_selectedPageIndex]["title"],
      pageBody: _pageMap[_selectedPageIndex]["page"],
      bottomNavigationBar: MyBottomBar(
        onTapHandler: (index) => _bottomBarPageSwitcher(index),
        currentIndex: _selectedPageIndex,
      ),
      drawer: MyDrawer(),
    );
  }
}
