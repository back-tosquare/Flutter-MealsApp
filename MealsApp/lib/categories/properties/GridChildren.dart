import 'package:flutter/material.dart';

import '../CategoryInkWell.dart';
import '../dummyData.dart';

List<Widget> gridChildren = DUMMY_CATEGORIES
    .map((category) => CategoryInkWell(
          id: category.id,
          title: category.title,
          color: category.color,
        ))
    .toList();
