import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Skills/Model/skill_model.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SkillItem extends StatelessWidget {
  const SkillItem({required this.skillModel, super.key});

  final SkillModel skillModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 1.25.h,
      ),
      child: Row(
        children: [
          Expanded(
            flex: skillModel.percentage.w.toInt(),
            child: Container(
              height: 4.h,
              color: AppColors.whiteColor,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.symmetric(
                horizontal: 2.w,
              ),
              child: Text(
                skillModel.skill,
                style: TextStyle(
                  color: AppColors.grayColor,
                  fontSize: 12.sp,
                ),
              ),
            ),
          ),
          SizedBox(
            width: (100.w - skillModel.percentage.w),
            child: Padding(
              padding: EdgeInsets.only(
                right: 2.0.w,
              ),
              child: Divider(
                height: 2.h,
                color: AppColors.whiteColor,
              ),
            ),
          ),
          SizedBox(
            width: 1.w,
          ),
          Text(
            '${skillModel.percentage}%',
            style: TextStyle(
              color: AppColors.whiteColor,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}