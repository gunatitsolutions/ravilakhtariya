import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Education/Model/education_model.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EducationItem extends StatelessWidget {
  const EducationItem({required this.educationModel, super.key});

  final EducationModel educationModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          educationModel.period,
          style: GoogleFonts.oswald(
            color: AppColors.whiteColor,
            height: 1.1,
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
          ),
          maxLines: 2,
        ),
        SizedBox(
          height: 0.4.h,
        ),
        Text(
          educationModel.description,
          style: TextStyle(
              color: AppColors.grayColor,
              fontSize: 15.sp,
              fontWeight: FontWeight.w600
          ),
          overflow: TextOverflow.clip,
          maxLines: 4,
        ),
        SizedBox(
          height: 0.4.h,
        ),
        Text(
          educationModel.link,
          style: TextStyle(
            color: AppColors.grayColor,
            fontSize: 15.sp,
            fontWeight: FontWeight.w500,
          ),
          maxLines: 4,
        ),
      ],
    );
  }
}
