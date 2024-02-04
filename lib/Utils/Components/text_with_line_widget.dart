import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:ravilakhtariya/Utils/Components/custom_sizedbox.dart';
import 'package:ravilakhtariya/Utils/Components/custom_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextWithLineWidget extends StatelessWidget {
  final String? title;

  const TextWithLineWidget({super.key,this.title});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 0.5.w,vertical: 1.5.w),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              customSizedBox(2.5.w,widthHeight: true),
              CustomText(title:title ?? '',fontSize: 10.sp,textColor: AppColors.grayColor,),
              customSizedBox(2.0.w,widthHeight: true),
              const Expanded(child: Divider(thickness: 1,color: AppColors.grayColor,height: 0.5,))
            ],
          ),
        ),
      ),
    );
  }
}