import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ravilakhtariya/Screens/Splash/splash_controller.dart';
import 'package:ravilakhtariya/Themes/AppTheme/theme_controller.dart';
import 'package:get/get.dart';
import 'package:ravilakhtariya/Utils/Directory/DirectoryUtil.dart';
import 'package:ravilakhtariya/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  if(!kIsWeb) {
    DirectoryUtil.createFolder();
  }
  Get.put(ThemeController());
  Get.put(SplashController());
  runApp(const PortfolioApp());
}
