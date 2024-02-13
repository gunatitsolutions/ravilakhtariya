import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Videos/Model/video_model.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:ravilakhtariya/Utils/launch_custom_url.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VideoItem extends StatelessWidget {
  const VideoItem({super.key, required this.videoModel});

  final VideoModel videoModel;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        LaunchCustomURL.launchURL(videoModel.videoLink);
      },
      child: Card(
        color: AppColors.whiteColor,
        margin: EdgeInsets.symmetric(vertical: 1.0.h,horizontal: 1.0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              image: AssetImage(videoModel.videoImageUrl),
              fit: BoxFit.fitWidth,
            ),
            detailWidget(),
          ],
        ),
      ),
    );
  }

  detailWidget() {
    return Padding(
      padding: EdgeInsets.only(
          left: 0.5.w, right: 0.5.w, top: 0.2.h, bottom: 1.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 0.2.h,
          ),
          Text(
            videoModel.title,
            style: TextStyle(
                fontSize: 13.sp,
                fontWeight: FontWeight.w700,
                color: AppColors.blackColor),
            maxLines: 3,
          ),
          SizedBox(
            height: 0.2.h,
          ),
          Text(
            videoModel.shortDescription,
            style: TextStyle(
                fontSize: 10.sp,
                fontWeight: FontWeight.w500,
                color: AppColors.grayColor),
            maxLines: 5,
            overflow: TextOverflow.clip,
          )
        ],
      ),
    );
  }
}
