import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/SectionWidget/section_widget.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Videos/Widget/video_item.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Videos/video_section.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VideoSectionMobile extends VideoSection {
  const VideoSectionMobile({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titleWidget(),
        SizedBox(height: 1.h,),
        SectionWidget(
          sectionList: Constants.videoList,
          itemBuilder: (BuildContext context, int index) {
            return VideoItem(
              videoModel:
              Constants.videoList[index],
            );
          },
        ),
      ],
    );
  }
}