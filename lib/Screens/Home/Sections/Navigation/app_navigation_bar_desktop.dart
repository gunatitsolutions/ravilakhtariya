import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Constants/enumration.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Navigation/Widget/app_menu.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Navigation/app_navigation_bar.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppNavigationBarDesktop extends AppNavigationBar {
  AppNavigationBarDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 2.h,
        horizontal: 1.w,
      ),
      alignment: Alignment.center,
      child: appTitle()/*Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          appTitle(),
          //navigationMenus(),
        ],
      )*/,
    );
  }

  navigationMenus() {
    return Expanded(
      flex: 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: Menus.values
            .map(
              (e) => Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 0.5.w,
            ),
            child: AppMenu(
              menu: e,
              onTap: () {},
            ),
          ),
        )
            .toList(
          growable: false,
        ),
      ),
    );
  }
}
