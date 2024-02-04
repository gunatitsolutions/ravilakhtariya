import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Carouel/carousel_section.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarouselSectionMobile extends CarouselSection {
  const CarouselSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.blackColor,
      height: 40.h,
      child: carouseInfoWidget(),
    );
  }
}