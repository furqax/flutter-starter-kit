import 'package:flutter/material.dart';
import 'package:starter_kit/router/app_navigator.dart';

extension NavigationHelpersExt on BuildContext {
  AppNavigator get navigator => AppNavigatorImpl(this);
}
