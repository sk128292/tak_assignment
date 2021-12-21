import 'package:get/get.dart';
import 'package:tak_assignment/app/modules/home/views/home_view.dart';
import 'package:tak_assignment/app/modules/talkToAstrologer/views/talk_to_astrologer_view.dart';

class DashboardController extends GetxController {
  RxInt selectedIndex = 0.obs;

  final body = [
    HomeView(),
    TalkToAstrologerView(),
    HomeView(),
    HomeView(),
  ];

  Future<dynamic> onItemTapped(int index) async {
    selectedIndex.value = index;
  }
}
