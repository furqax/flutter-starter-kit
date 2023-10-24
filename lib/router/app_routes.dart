/// Represents the app routes and their paths.
enum AppRoutes {
  splashsScreen(
    name: 'splashscreen',
    path: '/splashscreen',
  ),
  userlistScreen(
    name: 'userlistscreen',
    path: '/userlistscreen',
  );

  const AppRoutes({
    required this.name,
    required this.path,
  });

  final String name;
  final String path;

  @override
  String toString() => name;
}
