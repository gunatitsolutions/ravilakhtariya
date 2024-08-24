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
    return const Responsive(
      mobile: AppNavigationBarMobile(),
      tablet: AppNavigationBarMobile(),
      desktop: AppNavigationBarDesktop(),
    );
  }

  Widget appTitle() {
    return Text(
      'Ravi Lakhtariya',
      style: GoogleFonts.oswald(
        fontSize: 20.sp,
        color: AppColors.whiteColor,
        fontWeight: FontWeight.w800,
      ),
    );
  }

  Widget resumeButton() {
    return Padding(
      padding: EdgeInsets.all(1.0.w),
      child: ElevatedButton(
        onPressed: () => Get.find<HomeController>().downloadResumes(),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          elevation: 1.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.w),
            side: const BorderSide(
              color: AppColors.whiteColor,
            ),
          ),
        ),
        child: Text(
          'downloadCV'.tr,
          style: TextStyle(
            color: AppColors.whiteColor,
            fontSize: 12.sp,
            height: 1.2,
          ),
        ),
      ),
    );
  }

  Widget menuButton() {
    return IconButton(
      onPressed: () =>
          Get.find<HomeController>().scaffoldKey.currentState!.openDrawer(),
      icon: const Icon(Icons.menu),
    );
  }

  Widget appMenuWidget() {
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

  List<Widget> webMenuWidget() {
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
