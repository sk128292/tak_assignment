import 'package:get/get.dart';
import 'package:tak_assignment/app/modules/home/controllers/home_controller.dart';
import 'package:tak_assignment/app/modules/talkToAstrologer/controllers/talk_to_astrologer_controller.dart';

import '../controllers/dashboard_controller.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(
      () => DashboardController(),
    );

    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    Get.lazyPut<TalkToAstrologerController>(
      () => TalkToAstrologerController(),
    );
  }
}
