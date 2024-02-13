import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Carouel/carousel_section.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarouselSectionDesktop extends CarouselSection {
  const CarouselSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blackColor,
      height: 70.h,
      child: carouseInfoWidget(),
    );
  }
}
