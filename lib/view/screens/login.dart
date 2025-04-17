import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/core/constants/image.dart';
import 'package:lawyer2/core/constants/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                AppImageAsset.logo2,
                height: 140,
                width: 140,
              ),
              SizedBox(height: 20),
              Text(
                'تسجيل الدخول',
                style: TextStyle(
                  color: Colors.amber, // لون ذهبي
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              TextField(
                decoration: InputDecoration(
                  hintText: 'اسم المستخدم',
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                ),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                  hintText: 'كلمة المرور',
                  hintStyle: TextStyle(color: Colors.grey),
                  fillColor: Colors.white,
                  filled: true,
                ),
                obscureText: true,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Get.toNamed(AppRoute.mainscreen);
                },
                child: Text(
                  'تسجيل الدخول',
                  style: TextStyle(color: Colors.black),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
