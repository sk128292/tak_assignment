import 'package:get/get.dart';

import '../controllers/talk_to_astrologer_controller.dart';

class TalkToAstrologerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TalkToAstrologerController>(
      () => TalkToAstrologerController(),
    );
  }
}
