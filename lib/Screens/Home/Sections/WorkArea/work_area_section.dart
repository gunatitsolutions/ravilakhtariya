import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/WorkArea/work_area_section_desktop.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/WorkArea/work_area_section_mobile.dart';
import 'package:ravilakhtariya/Utils/responsive.dart';

class WorkSection extends StatelessWidget {
  const WorkSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: WorkSectionMobile(),
        tablet: WorkSectionMobile(),
        desktop: WorkSectionDesktop());
  }
}
