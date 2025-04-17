import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/core/constants/color.dart';
import 'package:lawyer2/core/constants/routes.dart';

class CustomProfileButton extends StatelessWidget {
  const CustomProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ElevatedButton(
        onPressed: () {

          Get.toNamed(AppRoute.editprofile);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColor.praimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 24),
        ),
        child:
            Text('تعديل الملف الشخصي', style: TextStyle(color: AppColor.black)),
      ),
    );
  }
}
