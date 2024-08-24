import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ravilakhtariya/Bindings/common_binding.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Localization/language_service.dart';
import 'package:ravilakhtariya/Localization/languages.dart';
import 'package:ravilakhtariya/Routes/routes.dart';
import 'package:ravilakhtariya/Themes/AppTheme/app_theme.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PortfolioApp extends StatefulWidget {
  const PortfolioApp({super.key});

  @override
  PortfolioAppState createState() => PortfolioAppState();
}

class PortfolioAppState extends State<PortfolioApp> {
  @override
  void initState() {
    Get.lazyPut<LanguageService>(() => LanguageService());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (_, __, ___) {
        return GetMaterialApp(
          title: AppString.appName,
          theme: AppTheme.darkTheme(),
          darkTheme: AppTheme.darkTheme(),
          debugShowCheckedModeBanner: false,
          initialBinding: CommonBinding(),
          initialRoute: '/',
          locale: Get.deviceLocale,
          fallbackLocale: const Locale('en', 'US'),
          translations: Languages(),
          getPages: AppPages.getPageRoutes,
        );
      },
    );
  }
}
