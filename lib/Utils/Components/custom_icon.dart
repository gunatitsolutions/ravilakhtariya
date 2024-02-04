import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomIcon extends StatelessWidget {

  final IconData? iconData;
  final Color? iconColor;
  final double? iconSize;

  const CustomIcon({super.key,this.iconData, this.iconColor, this.iconSize});

  @override
  Widget build(BuildContext context) {
    return Icon(
        iconData ?? Icons.abc,
        color: iconColor ?? AppColors.blackColor,
        size:iconSize ?? 14.w);
  }
}