
import 'package:flutter/material.dart';

class Custom_info extends StatelessWidget {
  const Custom_info({
    super.key,
    required this.text,
    required this.icon,
  });
  final String text;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 38,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: Icon(icon
            //Icons.email
            
            ),
        title: Text(
          text,
          //  '${lawyer.email}',
          style: const TextStyle(fontSize: 14),
        ),
      ),
    );
  }
}
