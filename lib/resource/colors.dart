import 'package:flutter/material.dart';

class Col {
  // Light Theme
  static const lightPrimary = Colors.blue;
  static const lightOnPrimary = Colors.white;

  static const lightSecondary = Colors.cyan;
  static const lightOnSecondary = Colors.black;

  static const lightError = Colors.red;
  static const lightOnError = Colors.white;

  static const lightBackground = Colors.white;
  static const lightOnBackground = Colors.black;

  static const lightSurface = Colors.white;
  static const lightOnSurface = Colors.black;

  // Dark Theme
  static const darkPrimary = Colors.indigo;
  static const darkOnPrimary = Colors.white;

  static const darkSecondary = Colors.teal;
  static const darkOnSecondary = Colors.white;

  static const darkError = Colors.red;
  static const darkOnError = Colors.black;

  static const darkBackground = Colors.black;
  static const darkOnBackground = Colors.black;

  static const darkOnSurface = Colors.black;
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF$hexColor";
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
