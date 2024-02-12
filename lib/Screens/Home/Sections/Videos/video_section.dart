
import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Videos/video_section_desktop.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Videos/video_section_mobile.dart';
import 'package:ravilakhtariya/Utils/Components/title_widget.dart';
import 'package:ravilakhtariya/Utils/responsive.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class VideoSection extends StatelessWidget {
  const VideoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:2.w),
      child: const Responsive(
          mobile: VideoSectionMobile(),
          tablet: VideoSectionMobile(),
          desktop: VideoSectionDesktop()),
    );
  }

  Widget titleWidget() {
    return const TitleWidget(title: 'Videos');
  }
}
