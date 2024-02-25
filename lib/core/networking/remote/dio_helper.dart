import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

class DioHelper {
  static Dio dio = Dio();

  static init() {
    // Set default configurations for Dio instance
    dio.options.baseUrl = 'https://newsapi.org/';
    dio.options.connectTimeout = const Duration(seconds: 7); // 7 seconds
    dio.options.receiveTimeout = const Duration(seconds: 7); // 7 seconds
  }

  // get data
  static Future<Response> getData(
      {required String endpoint, Map<String, dynamic>? query}) async {
    try {
      Response response =
          await dio.get(endpoint, queryParameters: query);
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
  static Future<Response> postData(
      {required String endpoint,
      required dynamic data,
      Map<String, dynamic>? headers}) async {
    try {
      Response response = await dio.post(endpoint,
          data: data, options: Options(headers: headers));
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
