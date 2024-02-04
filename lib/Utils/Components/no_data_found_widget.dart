import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:ravilakhtariya/Themes/app_image.dart';
import 'package:ravilakhtariya/Utils/Components/custom_sizedbox.dart';
import 'package:ravilakhtariya/Utils/Components/custom_text.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class NoDataFoundWidget extends StatelessWidget {
  String? title;
  String? desc;
  VoidCallback? onTap;

  NoDataFoundWidget({super.key, this.title, this.desc, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          noDataFoundImg(),
          customSizedBox(1.w),
          noDataTitle(),
          customSizedBox(2.w),
        ],
      ),
    );
  }

  noDataFoundImg() {
    return Container(
        padding: EdgeInsets.all(5.w),
        child: Image(
          image: const AssetImage(AppImage.raviLakhtariya),
          height: 20.w,
          width: 20.w,
        ));
  }

  noDataTitle() {
    return CustomText(
      title: title ?? 'No Data Found',
      textAlign: TextAlign.center,
      fontSize: 12.sp,
      fontWeight: FontWeight.w600,
      textColor: AppColors.grayColor,
    );
  }

  noDataDesc() {
    return CustomText(
      title: desc ?? 'No Data Found',
      textAlign: TextAlign.center,
      fontSize: 11.sp,
      fontWeight: FontWeight.w600,
      textColor: AppColors.grayColor,
    );
  }
}
