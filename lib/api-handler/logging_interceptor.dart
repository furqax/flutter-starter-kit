// ignore_for_file: avoid_print, avoid_renaming_method_parameters, unnecessary_null_comparison, dead_code_on_catch_subtype

import 'dart:convert';
import 'dart:developer';
import 'package:dio/dio.dart';

import 'package:starter_kit/api-handler/env_constants.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoggingInterceptors extends Interceptor {
  final Dio? dio;

  LoggingInterceptors({this.dio});

  Future<bool> _isInternetConnected() async {
    var connectivityResult = await Connectivity().checkConnectivity();
    if (connectivityResult == ConnectivityResult.none) {
      Fluttertoast.showToast(
          msg: EnvironmentConstants.internetNotAvailableMessage);
      return false;
    }
    return true;
  }

  @override
  void onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    if (await _isInternetConnected()) {
      print(
          "--> ${options.method.toUpperCase()} ${options.baseUrl}${options.path}");
      print("Headers: ${options.headers}");
      print("QueryParameters: ${options.queryParameters}");
      if (options.data != null) {
        log("Body: ${options.data}");
      }
      print("--> END ${options.method.toUpperCase()}");
      handler.next(options);
    } else {
      handler.reject(
          DioError(requestOptions: options, error: 'No Internet Connection'));
    }
  }

  @override
  void onError(DioError dioError, ErrorInterceptorHandler handler) {
    if (dioError.response?.statusCode == 401) {
      // Handle specific 401 error scenarios here if needed
    }
    print(
        "ERROR[${dioError.response?.statusCode}] => PATH: ${dioError.requestOptions.baseUrl}${dioError.requestOptions.path}");
    print("Error Message: ${dioError.message}");
    if (dioError.response != null) {
      print("Error Data: ${dioError.response?.data}");
    }
    handler.next(dioError);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print(
        "<-- ${response.statusCode} ${response.requestOptions.baseUrl}${response.requestOptions.path}");
    print("Headers: ${response.headers}");
    print(
        "Response: ${const JsonEncoder.withIndent('  ').convert(response.data)}");
    print("<-- END HTTP");
    handler.next(response);
  }
}
