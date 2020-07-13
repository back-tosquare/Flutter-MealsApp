import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyConfigurations {
  void setDeviceOrientation() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
  }
}
