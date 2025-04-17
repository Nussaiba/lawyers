import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditProfileController extends GetxController {
  late TextEditingController nameController;
  late TextEditingController emailController ;
  late TextEditingController specializationController ;
  late TextEditingController phoneController ;
  late TextEditingController websiteController ;

  @override
  void onInit() async {
    super.onInit();
    nameController = TextEditingController();
    emailController = TextEditingController();
    specializationController = TextEditingController();
    phoneController = TextEditingController();
     websiteController = TextEditingController();
  }


@override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
        specializationController.dispose();
    phoneController.dispose();
    websiteController.dispose();

    super.dispose();
  }



  var name = ''.obs;
  var email = ''.obs;
  var specialization = ''.obs;
  var phone = ''.obs;
  var website = ''.obs;

  void updateProfile(String newName, String newEmail, String newSpecialization,
      String newPhone, String newWebsite) {
    name.value = newName;
    email.value = newEmail;
    specialization.value = newSpecialization;
    phone.value = newPhone;
    website.value = newWebsite;
  }
}
