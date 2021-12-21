import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/dashboard_controller.dart';

class DashboardView extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          unselectedFontSize: 11,
          selectedFontSize: 12,
          selectedItemColor: Colors.orange,
          currentIndex: controller.selectedIndex.value,
          showUnselectedLabels: true,
          unselectedItemColor: Colors.grey,
          showSelectedLabels: true,
          onTap: controller.onItemTapped,
          items: [
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/home.png"),
                color: controller.selectedIndex.value == 0
                    ? Colors.orange
                    : Colors.grey,
                height: 30,
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/talk.png"),
                color: controller.selectedIndex.value == 1
                    ? Colors.orange
                    : Colors.grey,
                height: 30,
              ),
              label: "Talk to Astrologer",
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/ask.png"),
                height: 30,
                color: controller.selectedIndex.value == 2
                    ? Colors.orange
                    : Colors.grey,
              ),
              label: "Ask Question",
            ),
            BottomNavigationBarItem(
              icon: Image(
                image: AssetImage("assets/reports.png"),
                height: 30,
                color: controller.selectedIndex.value == 3
                    ? Colors.orange
                    : Colors.grey,
              ),
              label: "reports",
            ),
          ],
        ),
      ),
      body: SizedBox(
        width: Get.width,
        height: Get.height,
        child: Obx(
          () => controller.body[controller.selectedIndex.value],
        ),
      ),
    );
  }
}
