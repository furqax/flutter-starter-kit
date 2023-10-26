import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppNavigator {}

class AppNavigatorImpl implements AppNavigator {
  AppNavigatorImpl(this.context);

  final BuildContext context;
}
