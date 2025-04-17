import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';

// إنشاء Controller
class DraweRController extends GetxController {
  var isOpen = false.obs;
  AdvancedDrawerController advancedDrawerController =
      AdvancedDrawerController();
  void toggleDrawer() {
    isOpen.value = !isOpen.value;
  }
   handleMenuButtonPressed() {
    // تحقق مما إذا كان الـ Drawer مفتوحًا حاليًا
    if (advancedDrawerController.value.visible) {
      // إذا كان مفتوحًا، قم بإخفائه
      advancedDrawerController.hideDrawer();
    } else {
      // إذا لم يكن مفتوحًا، قم بإظهاره
      advancedDrawerController.showDrawer();
    }
  }
}
