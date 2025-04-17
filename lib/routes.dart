import 'package:get/get.dart';
import 'package:lawyer2/core/constants/routes.dart';
import 'package:lawyer2/view/screens/edit_profile.dart';
import 'package:lawyer2/view/screens/favorite.dart';
import 'package:lawyer2/view/screens/home.dart';
import 'package:lawyer2/view/screens/login.dart';
import 'package:lawyer2/view/screens/main_screen.dart';
import 'package:lawyer2/view/screens/visitor.dart';

List<GetPage<dynamic>>? routes = [
  //splash
  // GetPage(
  //     name: "/splash",
  //     page: () => const SplashPage(),
  //     middlewares: [MyMiddleWare()]),

  // //OnBoarding
  // GetPage(name: AppRoute.onBoarding, page: () => const OnBoarding()),


  // GetPage(name: AppRoute.login, page: () =>  LoginPage()),
  // GetPage(name: AppRoute.search, page: () =>  SearchPage()),
  // GetPage(name:  AppRoute.profile ,page:()=>LawyerProfile()),

   GetPage(name:  AppRoute.mainscreen ,page:()=>MainScreen()),

  GetPage(name: AppRoute.home, page: () => HomePage()),
  GetPage(name: AppRoute.editprofile, page: () => ProfileEditPage()),
  GetPage(name: AppRoute.favorite, page: () => FavoritePage()),
  GetPage(name: AppRoute.visitor, page: () => LawyerVisitsPage()),
  GetPage(name: AppRoute.login, page: () => LoginPage()),

  
];
