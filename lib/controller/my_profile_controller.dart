import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/core/constants/routes.dart';
import 'package:lawyer2/view/widgets/edit_profile/custom_button.dart';

class MyProfileController extends GetxController {
  Rx<DateTime?> selectedDateChosen = DateTime.now().obs;
  RxString selectedStartTime = '00:00'.obs;
  RxString selectedEndTime = '23:00'.obs;

  void updateSelectedDate(DateTime date) {
    selectedDateChosen.value = date;
  }

  void updateSelectedStartTime(String time) {
    selectedStartTime.value = time;
  }

  void updateSelectedEndTime(String time) {
    selectedEndTime.value = time;
  }

  final List<String> hoursList =
      List.generate(24, (index) => '${index.toString().padLeft(2, '0')}:00');

  ChooseTime() {
    showDialog(
      context: Get.context!,
      builder: (context) {
        return AlertDialog(
          title: Center(
              child: Text(
            'اختر أوقات الزيارات',
            textAlign: TextAlign.center,
          )),
          content: Obx(
            () => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ElevatedButton(
                  onPressed: () async {
                    final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: selectedDateChosen.value,
                      firstDate: DateTime.now(),
                      lastDate: DateTime(DateTime.now().year + 1),
                    );
                    if (selectedDate != null) {
                      updateSelectedDate(selectedDate);
                    }
                  },
                  child: Text(
                      'اختر التاريخ: ${selectedDateChosen.value.toString().substring(0, 10)}'),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('من: '),
                    DropdownButton<String>(
                      value: selectedStartTime.value,
                      items: hoursList.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (selectedTime) {
                        updateSelectedStartTime(selectedTime!);
                        final startIndex = hoursList.indexOf(selectedTime);
                        selectedEndTime.value = hoursList[startIndex + 1];
                      },
                    ),
                    SizedBox(width: 20),
                    Text('إلى: '),
                    DropdownButton<String>(
                      value: selectedEndTime.value,
                      items: hoursList.where((hour) {
                        final startIndex =
                            hoursList.indexOf(selectedStartTime.value);
                        final endIndex = hoursList.indexOf(hour);
                        return endIndex > startIndex;
                      }).map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (selectedStartTime.value.isEmpty)
                          ? null
                          : (selectedTime) {
                              updateSelectedEndTime(selectedTime!);
                            },
                    ),
                  ],
                ),
              ],
            ),
          ),
          actions: [
            Center(
              child: CustomButton(
                buttonTitle: 'عرض الزيارات',
                onPressed: () {
                  Get.back();
                  Get.toNamed(AppRoute.visitor);
                },
              ),
            ),
          ],
        );
      },
    );
  }
}
