import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ravilakhtariya/Constants/enumration.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppMenu extends StatelessWidget {
  final Menus menu;
  final VoidCallback? onTap;

  const AppMenu({super.key, required this.menu, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      onHover: (value) {},
      style: ElevatedButton.styleFrom(
        shadowColor: AppColors.grayColor,
        elevation: 0.0,
      ),
      child: Text(
        menu.name.toUpperCase(),
        style: GoogleFonts.oswald(
            fontWeight: FontWeight.w600,
            fontSize: 13.sp,
            color: AppColors.whiteColor),
      ),
    );
  }
}
