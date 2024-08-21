import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:trogonapp/model/courselistmodel.dart';
import 'package:trogonapp/utils/base%20url/base%20url.dart';

class CousepageController extends GetxController {
  Cousrselist? cousrselist;
  var loading = false.obs;
  loadcouse() async {
    try {
      loading.value = true;
      var response = await http
          .get(Uri.parse("${baseurll}/my_course?auth_token=${token}"));
      if (response.statusCode == 200) {
        loading.value = false;
        cousrselist = cousrselistFromJson(response.body);
      } else {
        loading.value = false;
      }

      log("response : ${response.body}");
    } catch (e) {
      loading.value = false;
      log("error in loadcouse ${e}");
    }
  }

  @override
  void onInit() {
    loadcouse();
    // TODO: implement onInit
    super.onInit();
  }
}
