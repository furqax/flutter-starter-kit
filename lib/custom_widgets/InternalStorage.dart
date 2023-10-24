import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

//////////// Get and Set and clear Access Token //////////////
Future<String> getAccessToken() async {
  final prefs = await SharedPreferences.getInstance();
  var token = prefs.getString('AccessToken');

  return token ?? '';
}

void saveAccessToken(String token) async {
  final prefs = await SharedPreferences.getInstance();
  prefs.setString('AccessToken', token);
}

void clearAccessToken() async {
  final prefs = await SharedPreferences.getInstance();
  prefs.remove('AccessToken');
}

void clearEveryThing() {
  clearAccessToken();
}
