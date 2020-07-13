import 'package:flutter/material.dart';

class RecepieDetailHeading extends StatelessWidget {
  final String text;

  RecepieDetailHeading(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: Text(
        text,
        style: Theme.of(context).textTheme.headline6,
      ),
    );
  }
}
