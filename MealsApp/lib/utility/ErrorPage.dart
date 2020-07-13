import 'package:flutter/material.dart';
import './DefaultPage.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultPage(
      pageTitle: "Error",
      pageBody: Center(
        child: Text("Error Page"),
      ),
    );
  }
}
