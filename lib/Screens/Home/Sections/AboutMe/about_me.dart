import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/AboutMe/about_me_desktop.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/AboutMe/about_me_mobile.dart';
import 'package:ravilakhtariya/Utils/responsive.dart';

class AboutMe extends StatelessWidget {
  const AboutMe({super.key});

  @override
  Widget build(BuildContext context) {
    return Responsive(mobile: AboutMeMobile(), tablet: AboutMeMobile(), desktop: AboutMeDesktop());
  }
}