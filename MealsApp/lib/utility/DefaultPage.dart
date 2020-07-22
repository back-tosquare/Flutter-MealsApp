import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  final String pageTitle;
  final Widget pageBody;
  final Widget bottomNavigationBar;
  final Widget drawer;
  final Widget popupMenuWidget;

  DefaultPage({
    @required this.pageTitle,
    @required this.pageBody,
    this.bottomNavigationBar,
    this.drawer,
    this.popupMenuWidget,
  });
  @override
  Widget build(BuildContext context) {
    List<Widget> actionWidgetList = [];

    if (popupMenuWidget != null) {
      actionWidgetList.add(popupMenuWidget);
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
        actions: actionWidgetList,
      ),
      body: pageBody,
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
    );
  }
}
