import 'package:flutter/material.dart';
import 'package:starter_kit/resource/colors.dart';

final ThemeData lightTheme = ThemeData.from(
  colorScheme: const ColorScheme.light(
    primary: Col.lightPrimary,
    onPrimary: Col.lightOnPrimary,
    secondary: Col.lightSecondary,
    onSecondary: Col.lightOnSecondary,
    error: Col.lightError,
    onError: Col.lightOnError,
    background: Col.lightBackground,
    onBackground: Col.lightOnBackground,
    surface: Col.lightSurface,
    onSurface: Col.lightSurface,
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Col.lightPrimary),
    bodyMedium: TextStyle(color: Col.lightPrimary),
    //... define other text styles as needed
  ),

  // Add any other ThemeData customizations here.
);

final ThemeData darkTheme = ThemeData.from(
  colorScheme: const ColorScheme.dark(
    primary: Col.darkPrimary,
    onPrimary: Col.lightSurface,
    secondary: Col.darkSecondary,
    onSecondary: Col.darkOnSecondary,
    error: Col.darkError,
    onError: Col.darkOnError,
    background: Col.darkBackground,
    onBackground: Col.darkOnBackground,
    surface: Col.darkOnBackground,
    onSurface: Col.lightSurface,
  ),

  textTheme: const TextTheme(
    bodyLarge: TextStyle(color: Col.darkPrimary),
    bodyMedium: TextStyle(color: Col.darkPrimary),
    //... define other text styles as needed
  ),
  // Add any other ThemeData customizations here.
);
