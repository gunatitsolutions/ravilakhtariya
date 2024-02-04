import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Education/Widget/education_item.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Education/education_section.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/SectionWidget/section_widget.dart';

class EducationSectionDesktop extends EducationSection {
  const EducationSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titleWidget(),
        SectionWidget(
          sectionList: Constants.educationList,
          widgetShowType: WidgetShowType.grid,
          crossAxisCount: 3,
          itemBuilder: (BuildContext context, int index) {
            return EducationItem(educationModel: Constants.educationList[index]);
          },
        ),
      ],
    );
  }
}
