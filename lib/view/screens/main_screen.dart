import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lawyer2/core/constants/color.dart';
import 'package:lawyer2/core/constants/image.dart';
import 'package:lawyer2/data/lawyer_model.dart';
import 'package:lawyer2/view/screens/favorite.dart';
import 'package:lawyer2/view/screens/home.dart';
import 'package:lawyer2/view/screens/lawyer_profile.dart';
import 'package:lawyer2/view/screens/my_profile.dart';
import 'package:lawyer2/view/screens/profile_page.dart';
import 'package:lawyer2/view/screens/search.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

// التحكم في التنقل
class NavigationController extends GetxController {
  var currentIndex = 3.obs;

  void changeIndex(int index) {
    currentIndex.value = index;
  }
}

class MainScreen extends StatelessWidget {
  final NavigationController navigationController =
      Get.put(NavigationController());

  final List<Widget> _pages = 
  [
  
        FavoritePage(),

    SearchPage(),
    
    MyProfile(
      lawyer: Lawyer(
        name: 'علي عبد الله',
        email: 'ali@example.com',
        phoneNumber: '123-456-7890',
        imageUrl: 'https://via.placeholder.com/100',
        specialization: 'قانون الأسرة',
        location: 'لوس أنجلوس',
        bio: 'محامي ذو خبرة في قضايا الطلاق وحضانة الأطفال.',
        yearsOfExperience: 8,
        workingHours: 'من 9 صباحًا إلى 5 مساءً',
        image: AppImageAsset.lawyer
      ),
    ),
    HomePage(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: PersistentTabView(
        
        context,
        
        screens:  _pages,
        items: _navBarsItems(),
        onItemSelected: (index) {
          navigationController.changeIndex(index);
        },
        navBarStyle: NavBarStyle.style1,
        backgroundColor: Color(0xff000000),
        decoration: NavBarDecoration(
          borderRadius:
              BorderRadius.vertical(top: Radius.circular(30.0)),
          colorBehindNavBar: Colors.transparent, 
        ),

    
      ),
    );
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      
     PersistentBottomNavBarItem(
        icon: Icon(Icons.favorite, size: 30),
        inactiveIcon: Icon(Icons.favorite_outline, size: 30),
        title: ("المفضلة"),
        activeColorPrimary: AppColor.praimaryColor,
        activeColorSecondary: AppColor.praimaryColor2,
        inactiveColorPrimary: Colors.grey,
      ),
       PersistentBottomNavBarItem(
        icon: Icon(Icons.search, size: 30),
        inactiveIcon: Icon(Icons.search_outlined, size: 30),
        title: ("البحث"),
        activeColorPrimary: AppColor.praimaryColor,
        activeColorSecondary:  AppColor.praimaryColor2,
        inactiveColorPrimary: Colors.grey,
      ),
     
        PersistentBottomNavBarItem(
        icon: Icon(Icons.person, size: 30),
        inactiveIcon: Icon(Icons.person_outlined, size: 30),
        title: ("الملف الشخصي"),
        activeColorPrimary:  AppColor.praimaryColor,
        activeColorSecondary:  AppColor.praimaryColor2,
        inactiveColorPrimary: Colors.grey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.home, size: 30),
        inactiveIcon: Icon(Icons.home_outlined, size: 30),
        title: ("الرئيسية"),
        activeColorPrimary: AppColor.praimaryColor,
        activeColorSecondary: AppColor.praimaryColor2,
        inactiveColorPrimary: Colors.grey,
      ),
    ];
  }
}
