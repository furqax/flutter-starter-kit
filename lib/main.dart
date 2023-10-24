import 'package:adaptive_theme/adaptive_theme.dart';
import 'package:flutter/material.dart';
import 'package:starter_kit/system-util/display_mode_util.dart';
import 'package:starter_kit/system-util/initial_setup.dart';
import 'package:starter_kit/system-util/orientation.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setIntialSetup();
  setHighRefreshRate();
  final savedThemeMode = await AdaptiveTheme.getThemeMode();
  setPreferredOrientation(savedThemeMode);
}
