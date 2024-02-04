import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CustomButtonWidget extends StatelessWidget {
  final String? btnText;
  final String? bg;
  final VoidCallback? onTap;
  final EdgeInsets margin;
  final double height;
  final double? width;
  final double topPosition;
  final double leftPosition;
  final double angle;
  final Color? textColor;
  final Color? backgroundColor;
  final bool? borderEnable;
  final String? backgroundImage;
  final Color gradientFirstColor;
  final Color gradientSecondColor;
  final double? borderRadius;

 const CustomButtonWidget(
      {super.key, this.btnText,
        this.bg,
        this.onTap,
        this.textColor,
        this.margin = EdgeInsets.zero,
        this.height = 50,
        this.width = 80,
        this.topPosition = 0,
        this.leftPosition = 0,
        this.angle = 0,
        this.backgroundColor,
        this.borderEnable = false,
        this.backgroundImage = '',
        this.gradientFirstColor = Colors.black,
        this.gradientSecondColor = Colors.black54,
        this.borderRadius
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
          width: width ?? 80.w,
          margin: margin,
          padding: EdgeInsets.symmetric(vertical: 1.0.h),
          height: height,
          decoration: (backgroundImage != '') ? BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(backgroundImage ?? ''),
                  fit: BoxFit.fill)) :  (backgroundColor != null) ? BoxDecoration(
            //color: buttonBackgroundColor ?? Colors.transparent,
            color:  backgroundColor ?? AppColors.bgColor,
            //AppColors.app_theme_color,
            borderRadius:  BorderRadius.circular(borderRadius ?? (height/2)),
            border: (borderEnable ?? false)
                ? Border.all(color: textColor ?? AppColors.grayColor, width: 1)
                : Border.all(width: 0, color: Colors.transparent),
            // boxShadow: <BoxShadow>[
            //   BoxShadow(
            //       color: AppColors.app_white_color,
            //       offset: const Offset(2, 2),
            //       blurRadius: 1,
            //       spreadRadius: 1)
            // ],
          ) : BoxDecoration(
            //color: buttonBackgroundColor ?? Colors.transparent,
            gradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [gradientFirstColor ,gradientSecondColor]
            ),
            //AppColors.app_theme_color,
            borderRadius:  BorderRadius.circular(borderRadius ?? (height/2)),
            border: (borderEnable ?? false)
                ? Border.all(color: textColor ?? AppColors.blackColor, width: 1)
                : Border.all(width: 0, color: Colors.transparent),
            // boxShadow: <BoxShadow>[
            //   BoxShadow(
            //       color: AppColors.app_white_color,
            //       offset: const Offset(2, 2),
            //       blurRadius: 1,
            //       spreadRadius: 1)
            // ],
          ),
          /*decoration: BoxDecoration(
            image: DecorationImage(
                image: ContainerDecoration.setBackgroundImage(bg),
                fit: BoxFit.fill)),*/
          child: Center(
            child: Text(
              btnText ?? '',
              style: TextStyle(
                  color: textColor ?? AppColors.blackColor,
                  fontSize: 12.0.sp,
                  fontWeight: FontWeight.w600),
              maxLines: 3,
              textAlign: TextAlign.center,
            ),
          )),
    );
  }
}
