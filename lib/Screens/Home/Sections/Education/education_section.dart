import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Education/education_section_desktop.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Education/education_section_mobile.dart';
import 'package:ravilakhtariya/Utils/Components/title_widget.dart';
import 'package:ravilakhtariya/Utils/responsive.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal:2.0.w,vertical: 2.h),
      child: const Responsive(
          mobile: EducationSectionMobile(),
          tablet: EducationSectionDesktop(),
          desktop: EducationSectionDesktop()),
    );
  }

  Widget titleWidget() {
    return const TitleWidget(title: 'Education');
  }
}
