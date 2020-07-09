import 'package:flutter/material.dart';

import './recepies/MyRecepies.dart';

class RecepiesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Recepies Page"),
      ),
      body: MyRecepies(),
    );
  }
}
