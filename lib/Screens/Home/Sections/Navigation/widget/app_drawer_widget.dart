import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Navigation/app_navigation_bar_mobile.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppDrawer extends AppNavigationBarMobile {
  AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 30.w,
      child: ListView(
        shrinkWrap: true,
        children: [
          appMenuWidget()
        ],
      ),
    );
  }


}