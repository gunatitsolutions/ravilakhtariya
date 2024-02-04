import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/WorkArea/Model/work_area_model.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class WorkItem extends StatelessWidget {
  const WorkItem({required this.workArea, super.key});

  final WorkAreaModel workArea;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:2.0.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Image(
                image: AssetImage(workArea.image),
                width: 6.w,
                height: 6.w,
              ),
              SizedBox(
                width: 3.w,
              ),
              Expanded(
                flex: 2,
                child: Text(
                  workArea.title,
                  style: GoogleFonts.oswald(
                    color: AppColors.colorWhite,
                    height: 1.1,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 1.h,
          ),
          Text(
            workArea.subtitle,
            style: TextStyle(
              color: AppColors.colorCaption,
              fontSize: 12.sp,
            ),
            maxLines: 7,
          ),
        ],
      ),
    );
  }
}
