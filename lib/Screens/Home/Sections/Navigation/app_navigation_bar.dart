import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ravilakhtariya/Constants/enumration.dart';
import 'package:ravilakhtariya/Screens/Home/Controllers/home_controller.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Navigation/Widget/app_menu.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Navigation/app_navigation_bar_desktop.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Navigation/app_navigation_bar_mobile.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:ravilakhtariya/Utils/responsive.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppNavigationBar extends StatelessWidget {
  const AppNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(
        mobile: AppNavigationBarMobile(),
        tablet: AppNavigationBarMobile(),
        desktop: AppNavigationBarDesktop());
  }

  appTitle() {
    return Text(
      'Ravi Lakhtariya',
      style: GoogleFonts.oswald(
          fontSize: 20.sp,
          color: AppColors.whiteColor,
          fontWeight: FontWeight.w800),
    );
  }

  menuButton() {
    return IconButton(
        onPressed: () {
          Get.find<HomeController>().scaffoldKey.currentState!.openDrawer();
        },
        icon: const Icon(Icons.menu));
  }

  appMenuWidget() {
    return Column(
      children: Menus.values
          .map((e) => ListTile(
        title: Text(
          e.name.toUpperCase(),
          style: GoogleFonts.oswald(
            fontSize: 14.sp,
          ),
        ),
      ))
          .toList(
        growable: false,
      ),
    );
  }

  webMenuWidget() {
    return Menus.values
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
    );
  }
}
