import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:starter_kit/router/app_routes.dart';
import 'package:starter_kit/views/splash.dart';
import 'package:starter_kit/views/user-list/userlist.dart';

/// Contains all of the app routes configurations
class AppRouter {
  static final router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    initialLocation: AppRoutes.splashsScreen.path,
    routes: [
      GoRoute(
        name: AppRoutes.splashsScreen.name,
        path: AppRoutes.splashsScreen.path,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: const SplashScreen(),
        ),
      ),
      GoRoute(
        name: AppRoutes.userlistScreen.name,
        path: AppRoutes.userlistScreen.path,
        pageBuilder: (context, state) => MaterialPage(
          key: state.pageKey,
          child: UserListScreen(),
        ),
      ),
    ],
  );
}
