import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:trogonapp/controller/Bottomsheetcontroller/bottom%20sheet%20controler.dart';
import 'package:trogonapp/utils/color/color.dart';

class Bottomsheet extends StatelessWidget {
  const Bottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(Bottomsheetcontroller());
    return Obx(
      () => AnimatedBottomNavigationBar(
        gapLocation: GapLocation.center,
        notchSmoothness: NotchSmoothness.verySmoothEdge,
        elevation: 10,
        height: 60,
        icons: [
          Icons.home,
          Icons.book,
          Icons.local_library_outlined,
          Icons.person_outline_outlined,
        ],
        activeIndex: controller.value.value,
        onTap: (int) {
          controller.value.value = int;
        },
        activeColor: appprimarycolor,
        inactiveColor: app3ycolor,
      ),
    );
  }
}
