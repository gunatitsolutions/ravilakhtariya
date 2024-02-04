import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Education/Model/education_model.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Education/Widget/education_item.dart';

enum WidgetShowType { grid, list, wrap }

class SectionWidget<T> extends StatelessWidget {
  const SectionWidget({
    required this.sectionList,
    required this.itemBuilder,
    super.key,
    this.crossAxisCount,
    this.widgetShowType,
    this.aspectRatio
  });

  final WidgetShowType? widgetShowType;
  final double? aspectRatio;
  final IndexedWidgetBuilder itemBuilder;
  final int? crossAxisCount;
  final List<T> sectionList;

  @override
  Widget build(BuildContext context) {
    return widgetShowType == WidgetShowType.grid ? gridWidget() : listWidget();
  }

  Widget gridWidget() {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: sectionList.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount ?? 2, childAspectRatio: aspectRatio ?? 2 / 1),
      itemBuilder: itemBuilder,
    );
  }

  Widget listWidget() {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: sectionList.length,
      itemBuilder: itemBuilder,
    );
  }

  Widget wrapWidget() {
    return Wrap(
      children: sectionList
          .map((e) => EducationItem(educationModel: e as EducationModel))
          .toList(growable: false),
    );
  }
}
