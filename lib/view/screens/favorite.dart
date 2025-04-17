import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/core/constants/color.dart';
import 'package:lawyer2/controller/home_controller.dart';
import 'package:lawyer2/view/widgets/favorite/app_bar_favorite.dart';
import 'package:lawyer2/view/widgets/favorite/favorite_lawyer_card.dart';
import 'package:lawyer2/view/widgets/home_widgets/custom_card.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return Scaffold(
        backgroundColor: AppColor.black,
        body: ListView(
          children: [
            // Padding(
            //           padding: const EdgeInsets.only(top:32.0),
            //           child: Card(
            //  elevation: 6,
            //  shape: const RoundedRectangleBorder(
            //    borderRadius: BorderRadius.only(
            //      topRight: Radius.circular(15),
            //      topLeft: Radius.circular(15),
            //    ),
            //  ),
            //  child: ListView.builder(
            //    itemCount: controller.lawyers.length,
            //    itemBuilder: (context, index) {
            //      final lawyer = controller.lawyers[index];
            //      return
            //          CustomFavoriteLawyerCard(lawyer: lawyer);
            //    },
            //  ),
            //           ),
            //         ),

            AppBarFavorite(),
            GetBuilder<HomeController>(
                builder: (controller) => Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          height: Get.height * 0.8,
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.2),
                                spreadRadius: 5,
                                blurRadius: 5,
                              ),
                            ],
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(35)),
                          ),
                          padding: const EdgeInsets.all(8.0),
                          child: Expanded(
                            child:

                                // ListView.builder(
                                //   itemCount: controller.lawyers.length,
                                //   itemBuilder: (context, index) {
                                //     final lawyer = controller.lawyers[index];
                                //     return
                                //         CustomFavoriteLawyerCard(lawyer: lawyer);
                                //   },
                                // ),

                                GridView.builder(
                              // shrinkWrap: true,
                              // physics: const NeverScrollableScrollPhysics(),
                              gridDelegate:
                                  const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2,
                                childAspectRatio: 0.7,
                                crossAxisSpacing: 0,
                                mainAxisSpacing: 0,
                              ),
                              itemCount: controller.lawyers.length,
                              itemBuilder: (context, index) {
                                final lawyer = controller.lawyers[index];
                                return CustomCard(lawyer: lawyer);
                              },
                            ),
                            // child: ListView.builder(
                            // //   shrinkWrap: true,
                            // //  physics: const NeverScrollableScrollPhysics(),
                            //   itemCount: homeController.lawyers.length,
                            //   itemBuilder: (context, index) {
                            //     final lawyer = homeController.lawyers[index];
                            //     return CustomLawyerCard(lawyer: lawyer);
                            //  },
                            //)
                          )),
                    )),
          ],
        ));
  }
}
