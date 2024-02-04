import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';

enum Exits { exitYes, exitNo }

class CustomExitDialogs {
  static Future<Exits> showCustomExitDialog(
      BuildContext context,
      String titles,
      String body,
      ) async {
    final action = await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0),
          ),
          //  title: Text(title),
          content: Text(body),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.of(context).pop(Exits.exitNo),
              child: Text(
                'no'.tr,
                style: const TextStyle(color: AppColors.blackColor),
              ),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(Exits.exitYes),
              child: Text('yes'.tr,
                  style: const TextStyle(color: AppColors.blackColor)),
            ),
          ],
        );
      },
    );
    return (action != null) ? action : Exits.exitNo;
  }

  static FutureOr<bool> exitWillPopUpMethods(BuildContext context,
      {String? title, String? desc}) async {
    final action = await CustomExitDialogs.showCustomExitDialog(
        context,
        title ?? 'confirm_exit'.tr,
        desc ?? 'are_you_sure_you_want_to_exit_from_application'.tr);
    if (action == Exits.exitYes) {
      SystemNavigator.pop();
      return true;
    } else {
      return false;
    }
  }
}
