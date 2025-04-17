import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:get/get.dart';
import 'package:lawyer2/controller/drawer.dart';
import 'package:lawyer2/controller/home_controller.dart';
import 'package:lawyer2/controller/my_profile_controller.dart';
import 'package:lawyer2/core/constants/color.dart';
import 'package:lawyer2/view/widgets/drawer.dart';
import 'package:lawyer2/view/widgets/home_widgets/custom_card.dart';

class HomePage extends StatelessWidget {
  final DraweRController _drawerController = Get.put(DraweRController());
  // final SpecializationController controller =
  //     Get.put(SpecializationController());
  final visitcontroller = Get.put(MyProfileController());

  @override
  Widget build(BuildContext context) {
    Get.put(HomeController());

    return AdvancedDrawer(
      backdrop: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              AppColor.black.withOpacity(0.1),
              AppColor.praimaryColor.withOpacity(0.1),
            ],
          ),
        ),
      ),
      controller: _drawerController.advancedDrawerController,
      animationCurve: Curves.easeInOut,
      animationDuration: const Duration(milliseconds: 300),
      animateChildDecoration: true,
      rtlOpening: false,
      disabledGestures: false,
      childDecoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      drawer: CustomDrawer(),
      child: Scaffold(
          body: ListView(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 170,
                color: AppColor.black,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(
                    8.0,
                    30,
                    8,
                    100,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Row(children: [
                      // IconButton(
                      //     onPressed: _drawerController.handleMenuButtonPressed,
                      //     icon: Padding(
                      //       padding: const EdgeInsets.all(8.0),
                      //       child: AnimatedSwitcher(
                      //         duration: const Duration(milliseconds: 250),
                      //         child: Icon(
                      //           // _drawerController.advancedDrawerController.value.visible
                      //           // ? Icons.clear
                      //           //:
                      //           Icons.menu,
                      //           color: AppColor.white,

                      //           key: ValueKey<bool>(_drawerController
                      //               .advancedDrawerController.value.visible),
                      //         ),
                      //       ),
                      //     )),
                      SizedBox(
                        width: 56,
                      ),
                      Spacer(),
                      Text(
                        "المحامين",
                        style: TextStyle(
                          fontSize: 18,
                          //fontWeight: FontWeight.w100,
                          color: AppColor.white,
                          fontFamily: 'Lemonada',
                        ),
                      ),
                      Spacer(),
                      // Padding(
                      //   padding: const EdgeInsets.all(16.0),
                      //   child: CircleAvatar(
                      //     radius: 28,
                      //     backgroundImage: const AssetImage(AppImageAsset.lawyer),
                      //     backgroundColor: Colors.grey.shade200,
                      //   ),
                      // ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0, top: 6),
                        child: InkWell(
                          onTap: () {
                            visitcontroller.ChooseTime();
                          },
                          child: Text(
                            'زياراتي',
                            style: TextStyle(
                                fontSize: 16, color: AppColor.praimaryColor),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 95, 8, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'الاختصاصات',
                      style: TextStyle(
                          fontSize: 18, color: AppColor.praimaryColor),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Container(
                      padding: EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 251, 251),
                        // gradient: LinearGradient(
                        //   colors: [AppColor.white, AppColor.white],
                        //   begin: Alignment.topLeft,
                        //   end: Alignment.bottomRight,
                        // ),
                        borderRadius: BorderRadius.circular(30),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            blurRadius: 10,
                            offset: Offset(0, 5),
                          ),
                        ],
                      ),
                      // color: AppColor.praimaryColor,
                      height: 80,
                      child: GetBuilder<HomeController>(
                        init: HomeController(),
                        builder: (controller) {
                          return ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: controller.specializations.length,
                            itemBuilder: (context, index) {
                              return GestureDetector(
                                onTap: () {
                                  controller.changeColor(index);
                                },
                                child: Obx(() => Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Container(
                                        margin: EdgeInsets.all(2),
                                        decoration: BoxDecoration(
                                          color:
                                              controller.selectedIndex.value ==
                                                      index
                                                  ? AppColor.praimaryColor
                                                      .withOpacity(0.8)
                                                  : Colors.grey[300],
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                        padding: EdgeInsets.all(2),
                                        child: Container(
                                            margin: EdgeInsets.symmetric(
                                                horizontal: 18),

                                            //   padding: EdgeInsets.symmetric(horizontal: 8),

                                            child: Center(
                                                child: Text(
                                                    '${controller.specializations[index]}'))),
                                      ),
                                    )),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          GetBuilder<HomeController>(
              builder: (homeController) => Container(
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
                      borderRadius:
                          const BorderRadius.vertical(top: Radius.circular(35)),
                    ),
                    padding: const EdgeInsets.all(4.0),
                    child: GridView.builder(
                      // shrinkWrap: true,
                      // physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 0.7,
                        crossAxisSpacing: 0,
                        mainAxisSpacing: 0,
                      ),
                      itemCount: homeController.lawyers.length,
                      itemBuilder: (context, index) {
                        final lawyer = homeController.lawyers[index];
                        return CustomCard(lawyer: lawyer);
                      },
                    ),
                  )),
        ],
      )),
    );
  }
}
