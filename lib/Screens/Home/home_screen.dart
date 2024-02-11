import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ravilakhtariya/Screens/Home/Controllers/home_controller.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Carouel/carousel_section.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/ContactUs/contact_us_section.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Education/education_section.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Navigation/app_navigation_bar.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Portfolio/portfolio_section.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Skills/skill_section.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Videos/video_section.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/WorkArea/work_area_section.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  HomeScreenState createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  HomeController homeController = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: homeController.scaffoldKey,
        //drawer: AppDrawer(),
        body: ListView(
          shrinkWrap: true,
          children: [
            const AppNavigationBar(),
            const CarouselSection(),
            const WorkSection(),
            SizedBox(height: 1.h,),
            const EducationSection(),
            const PortfolioSection(),
            const SkillSection(),
            const VideoSection(),
            SizedBox(height: 2.h,),
            ContactUsSection(),
            SizedBox(height: 2.h,),
          ],
        ),
      ),
    );
  }
}
