import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/SectionWidget/section_widget.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/WorkArea/Widget/work_item.dart';
import 'package:ravilakhtariya/Screens/ProjectDetail/project_detail_screen.dart';

class ProjectDetailMobile extends ProjectDetailScreen {
  const ProjectDetailMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return SectionWidget(
      sectionList: Constants.workAreaList,
      widgetShowType: WidgetShowType.grid,
      crossAxisCount: 4,
      itemBuilder: (context, index) {
        return WorkItem(
          workArea: Constants.workAreaList[index],
        );
      },
    );
  }
}
