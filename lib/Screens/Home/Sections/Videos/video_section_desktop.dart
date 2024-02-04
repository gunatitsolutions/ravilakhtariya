import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/SectionWidget/section_widget.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Videos/Widget/video_item.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Videos/video_section.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VideoSectionDesktop extends VideoSection {
  const VideoSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titleWidget(),
        SectionWidget(
          sectionList: Constants.videoList,
          crossAxisCount: 3,
          widgetShowType: WidgetShowType.grid,
          aspectRatio: 1/0.9,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.all(2.0.w),
              child: VideoItem(
                videoModel:
                Constants.videoList[index],
              ),
            );
          },
        ),
      ],
    );
  }
}
