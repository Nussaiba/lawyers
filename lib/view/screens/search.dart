import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/controller/home_controller.dart';
import 'package:lawyer2/controller/search_controller.dart';
import 'package:lawyer2/view/widgets/home_widgets/lawyer_card.dart';
import 'package:lawyer2/view/widgets/search_widgets/custom_search.dart';
import '../../core/constants/color.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SearCHController());
    Get.put(HomeController());
    return Scaffold(
      backgroundColor: AppColor.black,
      body: GetBuilder<SearCHController>(builder: (searchcontroller) {
        return ListView(children: [
          SearchWidget(
            hintText: "البحث",
            onFieldSubmitted: (data) async {
              searchcontroller.searchTerm.value = data;
            },
          ),
          Align(
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
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(35)),
                  ),
                  padding: const EdgeInsets.all(12.0),
                  child: Expanded(
                    child: Obx(() {
                      final lawyers = searchcontroller.filteredLawyers;
                      return ListView.builder(
                        itemCount: lawyers.length,
                        itemBuilder: (context, index) {
                          final lawyer = lawyers[index];
                          return CustomLawyerCard(lawyer: lawyer);
                        },
                      );
                    }),
                  ))),
        ]);
      }),
    );
  }
}
