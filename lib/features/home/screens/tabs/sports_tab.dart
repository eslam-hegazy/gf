import 'package:daldart/features/home/controllers/home_controller.dart';
import 'package:daldart/features/widgets/item_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SportsTab extends StatefulWidget {
  const SportsTab({super.key});

  @override
  State<SportsTab> createState() => _HotTabState();
}

class _HotTabState extends State<SportsTab> {
  var controller = Get.put(HomeController());
  @override
  void initState() {
    controller.getSportsNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isSportsLoading.value
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.yellowAccent,
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: controller.postSportsData.length,
              itemBuilder: (context, index) {
                return ItemHome(
                  color: Colors.yellowAccent,
                  postModel: controller.postSportsData[index],
                );
              },
            ),
    );
  }
}
