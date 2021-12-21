import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(150.0),
        child: Padding(
          padding: const EdgeInsets.only(top: 80.0, left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/hamburger.png",
                height: 40,
              ),
              Image.asset(
                "assets/logo.png",
                height: 60,
              ),
              Image.asset(
                "assets/profile.png",
                height: 40,
              ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Text(
          'HomeView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
