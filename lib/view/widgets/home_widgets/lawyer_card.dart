import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/core/constants/color.dart';
import 'package:lawyer2/core/constants/image.dart';
import 'package:lawyer2/data/lawyer_model.dart';
import 'package:lawyer2/view/screens/lawyer_profile.dart';
import 'package:lawyer2/view/widgets/favorite/custom_info.dart';
class CustomLawyerCard extends StatelessWidget {
  const CustomLawyerCard({
    super.key,
    required this.lawyer,
  });

  final Lawyer lawyer;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(()=>LawyerProfile(
        lawyer:lawyer
      ));
      },
      child: Card(
        margin: const EdgeInsets.all(6),
        elevation: 6,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(2.0),
                    
                   child: Container(
                      height: 120,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Image.asset(
                          AppImageAsset.lawyer,
                          fit: BoxFit.cover,
                        ),
                      ),
                     ),
                  )),
              const SizedBox(width: 15),
              Expanded(
                flex: 3,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        '${lawyer.name}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: AppColor.black,
                        ),
                      ),
                    ),
                    //const SizedBox(height: 3),
                    Custom_info(
                        icon: Icons.phone, text: '${lawyer.phoneNumber}'),
                    // Custom_info(
                    //     icon: Icons.email,
                    //     text: '${lawyer.email}'),
                    Custom_info(
                        icon: Icons.location_city, text: '${lawyer.location}'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
