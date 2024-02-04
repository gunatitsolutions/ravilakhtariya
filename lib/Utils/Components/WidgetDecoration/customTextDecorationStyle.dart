import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomTextDecorationStyle {
  static TextStyle customTextStyle(
      {double fontSize = 15,
      FontWeight fontWeight = FontWeight.normal,
      Color color = Colors.black}) {
    return TextStyle(
      fontSize: fontSize,
      fontWeight: fontWeight,
      color: color,
    );
  }

  static TextStyle appBarTitleStyle = const TextStyle(
      fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black54);

  static customFocusedInputBorderFunction({bool isUnderLine = false}) {
    if (isUnderLine == false) {
      return const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white, width: 1.0),
      );
    } else {
      return const UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black54, width: 1.0),
      );
    }
  }

  static customDisabledInputBorderFunction({bool isUnderLine = false}) {
    if (isUnderLine == false) {
      return const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.grayColor, width: 0.5),
      );
    } else {
      return const UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.grayColor, width: 0.5),
      );
    }
  }

  static customEnabledInputBorderFunction({bool isUnderLine = false}) {
    if (isUnderLine == false) {
      return const OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.grayColor, width: 0.5),
      );
    } else {
      return const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.grayColor, width: 0.5));
    }
  }

  static customRegistrationTextFieldDecoration({
    bool isLink = false,
    String hintText = '',
    String labelText = '',
    Color color = Colors.black,
    bool enableBorder = false,
    Widget? prefix,
    Widget? suffix,
    Color customHintColor = Colors.black,
    Color customLabelColor = Colors.black,
  }) {
    return InputDecoration(
      //contentPadding: EdgeInsets.zero,
      contentPadding: EdgeInsets.symmetric(
          vertical: prefix == null ? 1.7.h : 1.2.h,
          horizontal: prefix == null ? 1.0.w : 1.0.w),
      border: enableBorder
          ? CustomTextDecorationStyle.customDisabledInputBorderFunction()
          : InputBorder.none,
      focusedBorder: enableBorder
          ? CustomTextDecorationStyle.customFocusedInputBorderFunction()
          : InputBorder.none,
      disabledBorder: enableBorder
          ? CustomTextDecorationStyle.customDisabledInputBorderFunction()
          : InputBorder.none,
      enabledBorder: enableBorder
          ? CustomTextDecorationStyle.customEnabledInputBorderFunction()
          : InputBorder.none,
      hintText: hintText,
      hintStyle: TextStyle(fontSize: 11.sp, color: customHintColor),
      labelText: labelText,
      floatingLabelBehavior: FloatingLabelBehavior.never,
      labelStyle: CustomTextDecorationStyle.customTextStyle(
          color: AppColors.grayColor.shade600 /*customLabelColor*/,
          fontSize: 11.sp),
      isCollapsed: false,
      isDense: true,
      /*prefix: (isLink == true)
            ? Text(
                '\$ ',
                style: CustomTextDecorationStyle.customTextStyle(
                    color: AppColors.app_theme_color),
              )
            : Text(''),*/
      fillColor: Colors.transparent,
      filled: true,
      prefixIcon: prefix,
      suffixIcon: suffix,
    );
  }
}
