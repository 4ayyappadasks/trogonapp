import 'dart:developer';

import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:trogonapp/utils/base%20url/base%20url.dart';

import '../../model/selections model.dart';

class SelectionsController extends GetxController {
  SelectionsController({required this.id});
  final int id;
  Selections? selections;
  var loading = false.obs;
  loadselections() async {
    try {
      loading.value = true;
      var response = await http.get(Uri.parse(
          "${baseurll}levels_by_course?course_id=${id}&auth_token=${token}"));
      if (response.statusCode == 200) {
        loading.value = false;
        selections = selectionsFromJson(response.body);
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
    loadselections();
    // TODO: implement onInit
    super.onInit();
  }
}
