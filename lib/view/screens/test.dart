// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// // التحكم في الحالة
// class SpecializationController extends GetxController {
//   var selectedIndex = (-1).obs; // -1 يعني لا يوجد تخصص محدد
//  List<String> specializations = [
//       'التحكيم',
//       'الاستشارات القانونية',
//       'القانون التجاري',
//       'قانون الأسرة',
//       'القانون الجنائي',
//       'قانون الملكية الفكرية',
//     ];
//   void selectSpecialization(int index) {
//     selectedIndex.value = (selectedIndex.value == index) ? -1 : index; // إلغاء التحديد إذا تم الضغط على نفس التخصص
//   }
// }

// class SpecializationCard extends StatelessWidget {
//   final List<String> specializations;
//   final SpecializationController controller;

//   SpecializationCard({required this.specializations, required this.controller});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(16.0),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Colors.blueAccent, Colors.lightBlue],
//           begin: Alignment.topLeft,
//           end: Alignment.bottomRight,
//         ),
//         borderRadius: BorderRadius.circular(20),
//         boxShadow: [
//           BoxShadow(
//             color: Colors.black26,
//             blurRadius: 10,
//             offset: Offset(0, 5),
//           ),
//         ],
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [

//           SizedBox(height: 10),
//           Wrap(
//             spacing: 4.0,
//             runSpacing: 10.0,
//             children: List.generate(specializations.length, (index) {
//               return Obx(() {
//                 return GestureDetector(
//                   onTap: () => controller.selectSpecialization(index),
//                   child: Container(
//                     padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
//                     decoration: BoxDecoration(
//                       color: controller.selectedIndex.value == index
//                           ? Colors.white
//                           : Colors.white.withOpacity(0.3),
//                       borderRadius: BorderRadius.circular(15),
//                       border: Border.all(
//                         color: controller.selectedIndex.value == index
//                             ? Colors.white
//                             : Colors.transparent,
//                       ),
//                       boxShadow: controller.selectedIndex.value == index
//                           ? [
//                               BoxShadow(
//                                 color: Colors.blueAccent,
//                                 blurRadius: 10,
//                                 offset: Offset(0, 5),
//                               ),
//                             ]
//                           : [],
//                     ),
//                     child: Text(
//                       specializations[index],
//                       style: TextStyle(
//                         fontSize: 16,
//                         fontWeight: FontWeight.bold,
//                         color: controller.selectedIndex.value == index
//                             ? Colors.yellowAccent
//                             : Colors.white,
//                       ),
//                     ),
//                   ),
//                 );
//               });
//             }),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class SpecializationsScreen extends StatelessWidget {
//   final SpecializationController controller = Get.put(SpecializationController());

//   @override
//   Widget build(BuildContext context) {
//     List<String> specializations = [
//       'التحكيم',
//       'الاستشارات القانونية',
//       'القانون التجاري',
//       'قانون الأسرة',
//       'القانون الجنائي',
//       'قانون الملكية الفكرية',
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('اختصاصات المحامين'),
//         backgroundColor: Colors.blueAccent,
//       ),
//       body: Center(
//         child: SpecializationCard(
//           specializations: specializations,
//           controller: controller,),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class MyyyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Horizontal List Example'),
        ),
        body: Center(
          child: GetBuilder<YourController>(
            init: YourController(),
            builder: (controller) {
              if (controller == null || controller.items == null) {
                return CircularProgressIndicator();
              }
              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: controller.items.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      controller.changeColor(index);
                    },
                    child: Obx(() => Container(
                      margin: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: controller.selectedIndex.value == index ? Colors.blue : Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.all(16),
                      child: Text('Item ${index + 1}'),
                    )),
                  );
                },
              );
            },
          ),
        ),
      
    );
  }
}

class YourController extends GetxController {
  var items = List.generate(10, (index) => 'Item $index').obs;
  var selectedIndex = 0.obs;

  void changeColor(int index) {
    selectedIndex.value = index;
  }
}
