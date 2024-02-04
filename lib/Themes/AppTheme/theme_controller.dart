import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ravilakhtariya/Themes/AppTheme/app_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends GetxController {
  final RxBool _darkTheme = false.obs;
  bool get darkTheme => _darkTheme.value;

  onChangedTheme(bool themeMode) {
    _darkTheme.value = themeMode;
    update();
  }


}