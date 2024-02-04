import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/SectionWidget/section_widget.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/WorkArea/Widget/work_item.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/WorkArea/work_area_section.dart';

class WorkSectionMobile extends WorkSection {
  const WorkSectionMobile({super.key});


  @override
  Widget build(BuildContext context) {
    return  SectionWidget(
        sectionList: Constants.workAreaList,
        widgetShowType: WidgetShowType.grid,
        crossAxisCount: 2,
        itemBuilder: (BuildContext context, int index) {
          return WorkItem(workArea: Constants.workAreaList[index]);
        });
  }
}