import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/controller/search_controller.dart';
import 'package:lawyer2/core/constants/color.dart';

class AppBarFavorite extends StatelessWidget {
  AppBarFavorite({super.key,});
  //String? medicineName;
  // final void Function(String)? onFieldSubmitted;
  // final String hintText;
  @override
  Widget build(BuildContext context) {

    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
Center(
  child: Padding(
    padding: const EdgeInsets.all(32.0),
    child: Text("المحامون المفضلون",style: TextStyle(color: AppColor.white, fontSize: 18),),
  ),
)
      ],
    );
  }
}
