
import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Skills/skill_section_desktop.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Skills/skill_section_mobile.dart';
import 'package:ravilakhtariya/Utils/Components/title_widget.dart';
import 'package:ravilakhtariya/Utils/responsive.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SkillSection extends StatelessWidget {
  const SkillSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0.w),
      child: const Responsive(
          mobile: SkillSectionMobile(),
          tablet: SkillSectionMobile(),
          desktop: SkillSectionDesktop()),
    );
  }

  Widget titleWidget() {
    return const TitleWidget(title: 'Skills');
  }
}
