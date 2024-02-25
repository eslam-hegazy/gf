import 'package:daldart/core/route/app_route.dart';
import 'package:daldart/features/home/screens/home_screen.dart';
import 'package:get/get.dart';

List<GetPage> routes = [
  GetPage(
    name: AppRoutes.rHomeScreen,
    page: () =>  HomeScreen(),
  ),
];
