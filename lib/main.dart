import 'package:daldart/core/networking/remote/dio_helper.dart';
import 'package:daldart/features/home/controllers/home_controller.dart';
import 'package:daldart/features/home/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  DioHelper.init();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  var controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: HomeScreen(),
    );
  }
}
