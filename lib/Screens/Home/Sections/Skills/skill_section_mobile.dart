import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/SectionWidget/section_widget.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Skills/Widget/skill_item.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Skills/skill_section.dart';

class SkillSectionMobile extends SkillSection {
  const SkillSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titleWidget(),
        SectionWidget(
          sectionList: Constants.skillsList,
          itemBuilder: (BuildContext context, int index) {
            return SkillItem(skillModel: Constants.skillsList[index]);
          },
        ),
      ],
    );
  }
}