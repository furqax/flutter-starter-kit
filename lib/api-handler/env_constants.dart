/// Enum to define Application Environment instance
enum Environment { DEV, STAGING, PROD }

class EnvironmentConstants {
  // baseUrl for images for live
  // static String baseUrlforCnic = 'http://ehrmis.starter.gop.pk';
  static String baseUrl = 'https://jsonplaceholder.typicode.com/';
  static String baseUrlforimage = "https://jsonplaceholder.typicode.com/";
  static String internetCheckUrl = 'http://google.com/';
  static String internetNotAvailableMessage =
      'Please check your internet connection';

  static String? _config;

  /// method to set environment
  static String setEnvironment(Environment env) {
    switch (env) {
      case Environment.DEV:
        _config = "https://jsonplaceholder.typicode.com/";
        break;
      case Environment.STAGING:
        _config = "https://jsonplaceholder.typicode.com/";
        break;
      case Environment.PROD:
        _config = "https://jsonplaceholder.typicode.com/";
        break;
    }
    return _config!;
  }
}
