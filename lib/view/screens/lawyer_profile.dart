import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/controller/home_controller.dart';
import 'package:lawyer2/core/constants/color.dart';
import 'package:lawyer2/core/constants/image.dart';
import 'package:lawyer2/data/lawyer_model.dart';
import 'package:lawyer2/view/widgets/profile/clipper.dart';
import 'package:lawyer2/view/widgets/profile/app_bar.dart';
import 'package:lawyer2/view/widgets/profile/custom_bottton.dart';
import 'package:lawyer2/view/widgets/profile/row_info.dart';

class LawyerProfile extends StatelessWidget {
  final Lawyer lawyer;
  const LawyerProfile({super.key, required this.lawyer});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
        
          children: [
            Stack(
              children: [
                ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColor.black,
                          const Color.fromARGB(255, 243, 237, 220),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    height: 300,
                  ),
                ),
                ClipPath(
                  clipper: CurveClipper(),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          AppColor.praimaryColor.withOpacity(1),
                          const Color.fromARGB(255, 243, 237, 220),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    height: 260,
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: GetBuilder<HomeController>(
                          builder: (homeController) => AppBarProfileWidget(
                            onTapdrawer: () {
                              Get.back();
                            },
                            onTapFavorite: () {
                              homeController.isFav(lawyer);
                            },
                            isFav: lawyer.isFav,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      CircleAvatar(
                        radius: 85,
                        backgroundImage: AssetImage(lawyer.image),
                        backgroundColor: Colors.grey.shade200,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 2),
            Center(
              child: Text(
                lawyer.name,
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: AppColor.black),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                lawyer.specialization,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.grey[700]),
              ),
            ),
            const SizedBox(height: 2),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  textAlign: TextAlign.center,
                  lawyer.bio,
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      color: Colors.grey[700]),
                ),
              ),
            ),
            const SizedBox(height: 20),
                       buildInfoRow(
                         icon: Icons.email,
                         info: lawyer.email,
                       ),
                       const SizedBox(height: 20),
                       buildInfoRow(icon: Icons.phone, info: lawyer.phoneNumber),
                       const SizedBox(height: 20),
                       buildInfoRow(icon: Icons.location_on, info: lawyer.location),
                       const SizedBox(height: 20),
                       buildInfoRow(icon: Icons.schedule, info: lawyer.workingHours),
                       const SizedBox(height: 20),
                       buildInfoRow(
                           icon: Icons.work,
                           info:
                               'العمر المهني: ${lawyer.yearsOfExperience.toString()} سنوات'),
           
             SizedBox(height: 100),
            // const CustomProfileButton(),
          ],
        ),
      ),
    );
  }
}
