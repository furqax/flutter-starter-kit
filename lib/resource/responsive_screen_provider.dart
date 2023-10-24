import 'package:flutter/material.dart';

class ResponsiveScreenProvider {
  static bool isMobileScreen(BuildContext context) {
    return MediaQuery.of(context).size.width < 480;
  }

  static bool isTabScreen(BuildContext context) {
    return MediaQuery.of(context).size.width > 480 &&
        MediaQuery.of(context).size.width < 800;
  }

  static bool isDesktopScreen(BuildContext context) {
    return MediaQuery.of(context).size.width >= 800;
  }
}

class AppFontSizes {
  static const body = 16.0;
  static const title = 20.0;
  static const header = 24.0;
  // ... add more as needed
}
