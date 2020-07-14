import 'package:flutter/material.dart';

class DefaultPage extends StatelessWidget {
  final String pageTitle;
  final Widget pageBody;
  final Widget bottomNavigationBar;

  DefaultPage({
    @required this.pageTitle,
    @required this.pageBody,
    this.bottomNavigationBar,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pageTitle),
      ),
      body: pageBody,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
