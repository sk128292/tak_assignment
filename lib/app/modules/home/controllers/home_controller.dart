import 'package:get/get.dart';

class HomeController extends GetxController {
  final count = 0.obs;
  List<Map<dynamic, dynamic>> tithiList = [
    {"name": "Thithi Number", "data": "13"},
    {"name": "Thithi Name", "data": "Shukla Trayodashi"},
    {"name": "Special", "data": "Jaya Tithi"},
    {
      "name": "Summary",
      "data":
          "Auspicious day to Start important bussiness, wearing new cloths, fulfilment of promisses and semsual Pleaser"
    },
    {"name": "Diety", "data": "Cupid"},
    {"name": "End Time", "data": "4hr  42min 15sec"},
  ];

  List<Map<dynamic, dynamic>> nakshatra = [
    {"name": "Nakshatra Number", "data": "3"},
    {"name": "Nakshatra Name", "data": "Krittika"},
    {"name": "Ruler", "data": "Sun"},
    {"name": "Diety", "data": "Agni"},
    {
      "name": "Summary",
      "data":
          "Auspicious day to Start important bussiness, wearing new cloths, fulfilment of promisses and semsual Pleaser"
    },
    {"name": "End Time", "data": "4hr  42min 15sec"},
  ];
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
  void increment() => count.value++;
}
