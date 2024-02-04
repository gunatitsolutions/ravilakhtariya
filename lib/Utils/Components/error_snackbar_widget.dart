import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';

Future<void> showError(error,{String? titleText,SnackPosition? snackPosition}) async {
  String title = titleText ?? 'Error';
  String message = error.toString();
  if(message.contains('session-expired')) {
    message = 'Your otp is expired, Please try again';
  }
  else if(message.contains('invalid-verification-code')) {
    message = 'You have entered wrong otp, Please try again';
  } else if (message.contains('401')) {
    message = 'Bad error please try again after some time.';
  }
  Get.snackbar(title, message,
      snackPosition: snackPosition ?? SnackPosition.TOP,
      margin: const EdgeInsets.all(12),
      backgroundColor: Colors.black87,
      colorText: AppColors.whiteColor,
  );
}