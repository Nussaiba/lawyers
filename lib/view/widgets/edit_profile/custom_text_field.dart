import 'package:flutter/material.dart';
import 'package:lawyer2/core/constants/color.dart';

class buildTextField extends StatelessWidget {
  const buildTextField({ required this.controller, required this.label, required this.icon});
  final TextEditingController controller;
   final  String label;
   final IconData icon;

  @override
  Widget build(BuildContext context) {
    
  return Container(
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(10),
      boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.2),
          spreadRadius: 2,
          blurRadius: 5,
          offset: Offset(0, 3),
        ),
      ],
    ),
    child: TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(color: AppColor.black), 
        border: InputBorder.none,
        prefixIcon: Icon(icon, color:  AppColor.praimaryColor),
        contentPadding:const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      ),
      style: TextStyle(fontSize: 16),
      cursorColor: Colors.deepPurple,
      keyboardType: label == 'Email'
          ? TextInputType.emailAddress
          : TextInputType.text, 
      onSubmitted: (value) {
       
      },
    ),
  );}

    
      
}