import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/controller/visits_controller.dart';
import 'package:lawyer2/core/constants/color.dart';

class LawyerVisitsPage extends StatelessWidget {
  const LawyerVisitsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final VisitController visitController = Get.put(VisitController());

    return Scaffold(
        appBar: AppBar(
          title: Text(
            "جدول الزيارات",
            style: TextStyle(
              color: AppColor.white,
            ),
          ),
          backgroundColor: AppColor.black,
          iconTheme: IconThemeData(
            color: AppColor.white,
          ),
        ),
        body: Stack(children: [
          Container(
            color: AppColor.black,
            height: Get.height,
            width: Get.width,
          ),
          Column(
            children: [
              const SizedBox(height: 16.0),
              Expanded(
                child: Obx(
                  () {
                    if (visitController.visits.isEmpty) {
                      return const Center(
                          child: Text('لا توجد زيارات .',
                              style: TextStyle(fontSize: 18)));
                    }
                    return SingleChildScrollView(
                      child: Padding(
                        padding: const EdgeInsets.all(0.0),
                        child: Center(
                          child: Card(
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: DataTable(
                              columnSpacing: 46,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                              ),
                              columns: [
                                DataColumn(
                                    label: Text('اسم الزائر',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.black))),
                                DataColumn(
                                    label: Text('التاريخ',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.black))),
                                DataColumn(
                                    label: Text('الوقت',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: AppColor.black))),
                              ],
                              rows: visitController.visits.map(
                                (visit) {
                                  return DataRow(
                                    cells: [
                                      DataCell(Text(
                                        visit.visitorName,
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.black),
                                      )),
                                      DataCell(Text(
                                          '${visit.visitTime.toLocal()}'
                                              .split(' ')[0],
                                          style: TextStyle(
                                              fontSize: 16,
                                              color: AppColor.black))),
                                      DataCell(Text(
                                        '${visit.visitTime.hour}:${visit.visitTime.minute}',
                                        style: TextStyle(
                                            fontSize: 16,
                                            color: AppColor.black),
                                      )),
                                    ],
                                  );
                                },
                              ).toList(),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ]));
  }
}
