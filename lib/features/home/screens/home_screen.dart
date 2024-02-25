import 'package:daldart/features/home/controllers/home_controller.dart';
import 'package:daldart/features/home/screens/tabs/sports_tab.dart';
import 'package:daldart/features/home/screens/tabs/science_tab.dart';
import 'package:daldart/features/home/screens/tabs/health_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('/r/FlutterDev'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Sports'),
              Tab(text: 'Science'),
              Tab(text: 'Health'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            SportsTab(),
            ScienceTab(),
            HealthTab(),
          ],
        ),
      ),
    );
  }
}
