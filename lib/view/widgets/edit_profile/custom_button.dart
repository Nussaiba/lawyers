import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/core/constants/color.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.buttonTitle, required this.onPressed});
  final String buttonTitle;
  final void Function()?  onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed:onPressed,
      //  () {
      //   Get.snackbar('Success', 'Profile updated successfully!',
      //       snackPosition: SnackPosition.BOTTOM);
      // },
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColor.praimaryColor,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      child: Text(buttonTitle,
          style: TextStyle(
            fontSize: 18,
            color: AppColor.black,
          )),
    );
  }
}
