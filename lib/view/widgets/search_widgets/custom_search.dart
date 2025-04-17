import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/controller/search_controller.dart';
import 'package:lawyer2/core/constants/color.dart';

class SearchWidget extends StatelessWidget {
  SearchWidget({super.key, this.onFieldSubmitted, required this.hintText});
  //String? medicineName;
  final void Function(String)? onFieldSubmitted;
  final String hintText;
  @override
  Widget build(BuildContext context) {
    final SearCHController searchcontroller = Get.put(SearCHController());

    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
       // Padding(
          // padding: const EdgeInsets.only(right: 8.0, left: 8.0),
          // child: Text(
          //   "البحث عن محامي",
          //   style: TextStyle(
          //       fontSize: 24,
          //       //fontWeight: FontWeight.w100,
          //       color: AppColor.white,
          //       // fontFamily: "pacifico",
          //       fontFamily: "gafata",
          //       height: 1.5),
          // ),
        //),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Container(
            height: 50,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 10,
                    offset: const Offset(0, 3),
                  )
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 10,
              ),
              child: Row(children: [
  const Expanded(
                  flex: 1,                  
                  child: Icon(Icons.search, color: Colors.grey)),
  Expanded(
                  flex: 5,                  child: Container(
                    height: 50,
                    width: 250,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: hintText,
                          border: InputBorder.none,
                        ),
                        onFieldSubmitted: onFieldSubmitted,
                      ),
                    ),
                  ),
                ),
                
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: DropdownButton<String>(
                      isExpanded: true,
                      //value: searchcontroller.selectedOption.value,
                      icon:  const Icon(Icons.filter_list),
                      items: [
                        'حسب الموقع',
                        'حسب الاختصاص',
                        'حسب الاسم',
                        'كلاهما',
                      ].map((String option) {
                        return DropdownMenuItem<String>(
                          value: option,
                          child: Text(option
                          ,style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.normal
                          ),
                          ),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        if (newValue != null) {
                          searchcontroller.updateOption(newValue);
                        }
                      },
                    ),
                  ),
                ),
              ]),
            ),
          ),
        ),
      ],
    );
  }
}
