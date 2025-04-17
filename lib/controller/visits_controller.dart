

import 'package:get/get.dart';
import 'package:lawyer2/data/visit_model.dart';

class VisitController extends GetxController {
  var visits = <LawyerVisit>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadDummyVisits();
  }

  void loadDummyVisits() {
    visits.addAll([
     LawyerVisit(
    visitorName: 'أحمد الفهد',
    visitTime: DateTime.now().subtract(const Duration(days: 1))),
LawyerVisit(
    visitorName: 'فاطمة الزهراء',
    visitTime: DateTime.now().subtract(const Duration(days: 2))),
LawyerVisit(
    visitorName: 'يوسف العلي',
    visitTime: DateTime.now().subtract(const Duration(days: 3))),
LawyerVisit(
    visitorName: 'سارة النصر',
    visitTime: DateTime.now().subtract(const Duration(days: 4))),
LawyerVisit(
    visitorName: 'علي الحسين',
    visitTime: DateTime.now().subtract(const Duration(days: 5))),
LawyerVisit(
    visitorName: 'أحمد الفهد',
    visitTime: DateTime.now().subtract(const Duration(days: 1))),
LawyerVisit(
    visitorName: 'فاطمة الزهراء',
    visitTime: DateTime.now().subtract(const Duration(days: 2))),
LawyerVisit(
    visitorName: 'يوسف العلي',
    visitTime: DateTime.now().subtract(const Duration(days: 3))),
LawyerVisit(
    visitorName: 'سارة النصر',
    visitTime: DateTime.now().subtract(const Duration(days: 4))),
LawyerVisit(
    visitorName: 'علي الحسين',
    visitTime: DateTime.now().subtract(const Duration(days: 5))),
LawyerVisit(
    visitorName: 'أحمد الفهد',
    visitTime: DateTime.now().subtract(const Duration(days: 1))),
LawyerVisit(
    visitorName: 'فاطمة الزهراء',
    visitTime: DateTime.now().subtract(const Duration(days: 2))),
LawyerVisit(
    visitorName: 'يوسف العلي',
    visitTime: DateTime.now().subtract(const Duration(days: 3))),
LawyerVisit(
    visitorName: 'سارة النصر',
    visitTime: DateTime.now().subtract(const Duration(days: 4))),
LawyerVisit(
    visitorName: 'علي الحسين',
    visitTime: DateTime.now().subtract(const Duration(days: 5))),
LawyerVisit(
    visitorName: 'أحمد الفهد',
    visitTime: DateTime.now().subtract(const Duration(days: 1))),
LawyerVisit(
    visitorName: 'فاطمة الزهراء',
    visitTime: DateTime.now().subtract(const Duration(days: 2))),
LawyerVisit(
    visitorName: 'يوسف العلي',
    visitTime: DateTime.now().subtract(const Duration(days: 3))),
LawyerVisit(
    visitorName: 'سارة النصر',
    visitTime: DateTime.now().subtract(const Duration(days: 4))),
LawyerVisit(
    visitorName: 'علي الحسين',
    visitTime: DateTime.now().subtract(const Duration(days: 5))),

    ]);
  }
}