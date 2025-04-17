import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/core/constants/color.dart';
import 'package:lawyer2/routes.dart';
import 'package:lawyer2/view/screens/login.dart';
import 'package:lawyer2/view/screens/main_screen.dart';
import 'package:lawyer2/view/screens/test.dart';
import 'package:lawyer2/view/screens/new_card.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
     debugShowCheckedModeBanner: false ,
      title: 'Flutter Demo',
      theme: ThemeData(
   fontFamily: 'Tajawal', 
              colorScheme: ColorScheme.fromSeed(seedColor: AppColor.praimaryColor),
        useMaterial3: true,
      ),
     //home:  HomeScreen2(),
     //home:LawyersGridPage(),
            getPages: routes,
            
      initialRoute: '/login',

    
    );
  }
}
