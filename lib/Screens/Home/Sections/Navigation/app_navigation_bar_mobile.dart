import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Navigation/app_navigation_bar.dart';

class AppNavigationBarMobile extends AppNavigationBar {

  const AppNavigationBarMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: menuButton(),
      centerTitle: true,
      title: appTitle(),
    );
  }
}
