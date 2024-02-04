import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Routes/routes.dart';
import 'package:ravilakhtariya/Themes/AppTheme/app_theme.dart';
import 'package:ravilakhtariya/Utils/NetworkManager/network_binding.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  PortfolioAppState createState() => PortfolioAppState();
}

class PortfolioAppState extends State<PortfolioApp> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(builder: (_, __, ___) {
      return GetMaterialApp(
        title: AppString.appName,
        theme: AppTheme.lightTheme(),
        darkTheme: AppTheme.darkTheme(),
        // themeMode: Get.find<ThemeController>().darkTheme ? ThemeMode.dark : ThemeMode.light,
        debugShowCheckedModeBanner: false,
        initialBinding: NetworkBinding(),
        initialRoute: '/',
        getPages: AppPages.getPageRoutes,
      );
    });
  }
}
