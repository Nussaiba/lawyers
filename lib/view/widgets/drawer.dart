
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListTileTheme(
          textColor: Colors.black,
          iconColor: Colors.black,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 24.0),
                child: Container(
                  width: 128.0,
                  height: 128.0,
                  margin: const EdgeInsets.only(top: 24.0, bottom: 64.0),
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              
              ListTile(
                onTap: () {},
                leading: Icon(Icons.people),
                title: Text('الزيارات'),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.account_circle_rounded),
                title: Text('تعديل الملف الشخصي '),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.favorite),
                title: Text('المفضلة'),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.settings),
                title: Text('الإعدادات'),
              ),
              ListTile(
                onTap: () {},
                leading: Icon(Icons.logout),
                title: Text('تسجيل خروج'),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
