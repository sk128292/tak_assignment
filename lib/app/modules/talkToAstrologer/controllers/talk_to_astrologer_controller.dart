import 'dart:convert';

import 'package:get/get.dart';
import 'package:tak_assignment/app/api/api_provider.dart';
import 'package:tak_assignment/app/data/model/astrologer.dart';
import 'package:http/http.dart' as http;

class TalkToAstrologerController extends GetxController {
  ApiProvider apiProvider = Get.put(ApiProvider());
  Rx<astrologerModel?> astrologer = Rx<astrologerModel?>(null);

  var astrologerList = [].obs;

  Future getAstrologerData() async {
    var response = await http
        .get(Uri.parse("https://www.astrotak.com/astroapi/api/agent/all"));

    if (response.statusCode == 200) {
      var resp = jsonDecode(response.body);
      astrologerModel data = astrologerModel.fromJson(resp);
      astrologer.value = data;
      astrologerList.value = astrologer.value!.data!.toList();

      print("hhh" + astrologerList[0].aboutMe);
    }
    // apiProvider.getAstrologer().then((value) {
    //   if (value.isOk) {
    //     astrologerModel data =""
    //         astrologerModel.fromJson(json.decode(value.body));
    //     astrologer.value = data;
    //     astrologerList.value = astrologer.value!.data!.toList();
    //     // print(astrologer.value);
    //     print("fffffffffffffff" + astrologerList[0]["id"].toString());
    //   }
    // });
  }

  @override
  void onInit() {
    super.onInit();
    getAstrologerData();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
