import 'package:flutter/material.dart';
import 'package:lawyer2/core/constants/color.dart';

class buildInfoRow extends StatelessWidget {
  const buildInfoRow({super.key, required this.icon, required this.info});
final IconData icon;
final  String info;
  @override
  Widget build(BuildContext context) {
   
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: AppColor.praimaryColor),
          const SizedBox(width: 20),
          Expanded(
            child: Text(info,
                style: TextStyle(
                    color: AppColor.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w500)),
          ),
        ],
      ),
    );
  }
}