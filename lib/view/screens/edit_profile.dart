import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/controller/edit_profile_controller.dart';
import 'package:lawyer2/core/constants/color.dart';
import 'package:lawyer2/core/constants/image.dart';
import 'package:lawyer2/view/widgets/edit_profile/custom_text_field.dart';
import 'package:lawyer2/view/widgets/edit_profile/custom_button.dart';

class ProfileEditPage extends StatelessWidget {
  final EditProfileController profileController =
      Get.put(EditProfileController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.black,
      appBar: AppBar(
        title: Text(
          'تعديل البروفايل',
          style: TextStyle(
            color: AppColor.white,
          ),
        ),
        backgroundColor: AppColor.black,
        iconTheme: IconThemeData(
          color: AppColor.white,
        ),
      ),
      body: Stack(children: [
        Container(
          color: AppColor.black,
          height: Get.height,
          width: Get.width,
        ),
        const SizedBox(height: 16.0),
        Card(
          elevation: 6,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(15),
              topLeft: Radius.circular(15),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColor.praimaryColor.withAlpha(2),
                  const Color.fromARGB(255, 196, 194, 187)
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            padding: const EdgeInsets.all(16.0),
            child: ListView(
              children: [
                const SizedBox(height: 20),
                Center(
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: const AssetImage(AppImageAsset.lawyer),
                    backgroundColor: Colors.grey.shade200,
                  ),
                ),
                const SizedBox(height: 30),
                buildTextField(
                    controller: profileController.nameController,
                    label: 'الاسم',
                    icon: Icons.person),
                const SizedBox(height: 16),
                buildTextField(
                    controller: profileController.emailController,
                    label: 'الايميل',
                    icon: Icons.email),
                const SizedBox(height: 16),
                buildTextField(
                    controller: profileController.specializationController,
                    label: 'الاختصاص',
                    icon: Icons.work),
                const SizedBox(height: 16),
                buildTextField(
                    controller: profileController.phoneController,
                    label: 'رقم الهاتف',
                    icon: Icons.phone),
                const SizedBox(height: 40),
                 CustomButton(buttonTitle: 'حفظ التعديل',   
              onPressed:     () {
        Get.snackbar('Success', 'Profile updated successfully!',
            snackPosition: SnackPosition.BOTTOM);
      },),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
