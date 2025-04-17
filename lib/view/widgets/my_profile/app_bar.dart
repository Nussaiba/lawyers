import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/controller/my_profile_controller.dart';
import 'package:lawyer2/controller/profile_controller.dart';
import 'package:lawyer2/core/constants/color.dart';
import 'package:lawyer2/core/constants/routes.dart';

class AppBarMyProfileWidget extends StatelessWidget {
  const AppBarMyProfileWidget({super.key, this.onTapdrawer});
  final Function()? onTapdrawer;

  @override
  Widget build(BuildContext context) {
        final controller = Get.put(MyProfileController());

    
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
                    child: Icon(Icons.logout),
                  ),
                ),
              ),
              InkWell(
                  onTap: () {
                    //Get.toNamed(AppRoute.visitor);
                   controller.ChooseTime();
                  },
                  child:Padding(
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
                          Icons.people
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
