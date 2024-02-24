import 'package:daldart/features/home/screens/tabs/hot_tab.dart';
import 'package:daldart/features/home/screens/tabs/new_tab.dart';
import 'package:daldart/features/home/screens/tabs/rising_tab.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('/r/FlutterDev'),
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Hot'),
              Tab(text: 'New'),
              Tab(text: 'Rising'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            HotTab(),
            NewTab(),
            RisingTab(),
          ],
        ),
      ),
    );
  }
}
