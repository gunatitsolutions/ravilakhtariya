import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomText extends StatelessWidget {
  final String? title;
  final Color? textColor;
  final double? fontSize;
  final FontWeight? fontWeight;
  final TextOverflow? textOverflow;
  final int? maxLines;
  final TextAlign? textAlign;
  final double? letterSpacing;
  final double? height;

  const CustomText({super.key,
    this.title,
    this.textColor,
    this.fontSize,
    this.fontWeight,
    this.textOverflow,
    this.maxLines,
    this.textAlign,
    this.letterSpacing,
    this.height
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title ?? '',
      style: TextStyle(
        color: textColor ?? AppColors.blackColor,
        fontSize: fontSize ?? 13.0.sp,
        fontWeight: fontWeight ?? FontWeight.normal,
        overflow: textOverflow ?? TextOverflow.ellipsis,
        letterSpacing: letterSpacing ?? 1.0,
        height: height ?? 1.0
      ),
      textAlign: textAlign ?? TextAlign.left,
      maxLines: maxLines ?? 1,

    );
  }

}