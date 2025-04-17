import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/controller/home_controller.dart';
import 'package:lawyer2/core/constants/color.dart';
import 'package:lawyer2/core/constants/image.dart';
import 'package:lawyer2/data/lawyer_model.dart';
import 'package:lawyer2/view/screens/lawyer_profile.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    required this.lawyer,
  });

  final Lawyer lawyer;

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return InkWell(
      onTap: () {
        Get.to(() => LawyerProfile(
              lawyer: lawyer,
            ));
      },
      child: Card(
        margin: const EdgeInsets.all(8),
        elevation: 8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(children: [
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(lawyer.image),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                  ),
                ),
              ),
              Positioned(
                  top: 3,
                  left: 3,
                  child:   GetBuilder<HomeController>(
              builder: (controller) => InkWell(
                      onTap: () {
                      
                        controller.isFav(lawyer);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: AppColor.white,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 2,
                                  blurRadius: 10,
                                  offset: Offset(0, 3),
                                )
                              ]),
                          child: Icon(
                            //   controller.isFavorite.value
                            lawyer.isFav
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color:  lawyer.isFav
                                ? Colors.red
                                : Colors.grey,
                          ),
                        ),
                      ),
                    ),
                  )),
            ]),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      lawyer.name,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: AppColor.black,
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: Text(
                      lawyer.specialization,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[700],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
