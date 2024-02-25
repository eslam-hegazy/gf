import 'package:daldart/features/home/controllers/home_controller.dart';
import 'package:daldart/features/widgets/item_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HealthTab extends StatefulWidget {
  const HealthTab({super.key});

  @override
  State<HealthTab> createState() => _HealthTabState();
}

class _HealthTabState extends State<HealthTab> {
  var controller = Get.put(HomeController());
  @override
  void initState() {
    controller.getHealthNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isHealthLoading.value
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.blueAccent,
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: controller.postHealthData.length,
              itemBuilder: (context, index) {
                return ItemHome(
                  color: Colors.blueAccent,
                  postModel: controller.postHealthData[index],
                );
              },
            ),
    );
  }
}
