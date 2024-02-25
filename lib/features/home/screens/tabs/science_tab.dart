import 'package:daldart/features/home/controllers/home_controller.dart';
import 'package:daldart/features/widgets/item_home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScienceTab extends StatefulWidget {
  const ScienceTab({super.key});

  @override
  State<ScienceTab> createState() => _ScienceTabState();
}

class _ScienceTabState extends State<ScienceTab> {
  var controller = Get.put(HomeController());
  @override
  void initState() {
    controller.getScienceNews();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => controller.isScienceLoading.value
          ? const Center(
              child: CircularProgressIndicator(
                color: Colors.redAccent,
              ),
            )
          : ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              itemCount: controller.postScienceData.length,
              itemBuilder: (context, index) {
                return ItemHome(
                  color: Colors.redAccent,
                  postModel: controller.postScienceData[index],
                );
              },
            ),
    );
  }
}
