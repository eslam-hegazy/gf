import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class DioHelper {
  static Dio dio = Dio();

  static init() {
    // Set default configurations for Dio instance
    dio.options.baseUrl = 'https://www.reddit.com/r/FlutterDev/';
    dio.options.connectTimeout = const Duration(seconds: 7); // 7 seconds
    dio.options.receiveTimeout = const Duration(seconds: 7); // 7 seconds
  }

  // get data
  static Future<Response> getData(String endpoint) async {
    try {
      Response response = await dio.get(endpoint);
      return response;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        // Handle connection timeout
        Get.snackbar("Error", "Server Timeout", backgroundColor: Colors.red);
        throw Exception("Connection Timeout Exception");
      } else {
        // Handle other Dio errors
        throw Exception("Server Error");
      }
    } catch (e) {
      // Handle other exceptions
      throw e;
    }
  }

  // post data
  static Future<Response> postData(String endpoint, dynamic data) async {
    try {
      Response response = await dio.post(endpoint, data: data);
      return response;
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout) {
        Get.snackbar("Error", "Server Timeout", backgroundColor: Colors.red);
        throw Exception("Connection Timeout Exception");
      } else {
        throw e;
      }
    } catch (e) {
      throw e;
    }
  }
}
