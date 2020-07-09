import 'package:flutter/material.dart';

class MySliverGrid extends SliverGridDelegateWithMaxCrossAxisExtent {
  const MySliverGrid()
      : super(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        );
}
