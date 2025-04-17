import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/controller/home_controller.dart';
import 'package:lawyer2/controller/profile_controller.dart';
import 'package:lawyer2/core/constants/color.dart';

class AppBarProfileWidget extends StatelessWidget {
  const AppBarProfileWidget({super.key, this.onTapdrawer, this.onTapFavorite, required this.isFav});
  final Function()? onTapdrawer;
final void Function()? onTapFavorite;
final bool isFav;
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    Get.put(HomeController());
    return Container(
      // color: AppColor.praimaryColor,
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: onTapdrawer,
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Container(
                    padding: const EdgeInsets.all(10),
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
                    child: Icon(Icons.arrow_back),
                  ),
                ),
              ),
              InkWell(onTap: onTapFavorite,
                  // onTap: () {
                  //   controller.isFavorite.value =
                  //       !controller.isFavorite.value; // تبديل حالة المفضلة
                  // },
                  child: GetBuilder<HomeController>(
                    builder: (homeController) => Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Container(
                        padding: EdgeInsets.all(10),
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
                        //  controller.isFavorite.value
                        isFav
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: isFav
                              ? Colors.red
                              : Colors.grey,
                        ),
                      ),
                    ),
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
