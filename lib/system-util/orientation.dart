import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:starter_kit/app.dart';

void setSystemOverlayStyle() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: Colors.white,
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark));
}

void setPreferredOrientation(savedThemeMode) async {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitDown
  ]).then((_) {
    runApp(MyApp(savedThemeMode: savedThemeMode));
  });
}
