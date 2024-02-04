import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

enum RadioWigetInType { simple, dialog, bottomsheet }

enum ListStyle { Row, Column }

class RadioButtonWidget extends StatelessWidget {
  RadioWigetInType? radioWigetInType;
  ListStyle? listStyle;
  List<Widget> widgets = [];
  int? selectedValue = 0;
  Function(int?) onRadioSelection;

  RadioButtonWidget(
      {this.radioWigetInType,
        this.listStyle,
        required this.widgets,
        required this.selectedValue,
        required this.onRadioSelection});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(color: AppColors.whiteColor),
        padding: EdgeInsets.all(2.w),
        child: SingleChildScrollView(child: getListType()));
  }

  Widget getListType() {
    return (listStyle?.index == 0)
        ? Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: childrenWidget(),
    )
        : Column(children: childrenWidget());
  }

  List<Widget> childrenWidget() {
    return [
      for (int i = 0; i < widgets.length; i++)
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Radio(
              value: i,
              groupValue: selectedValue,
              onChanged: (value) {
                if(value != null) {
                  onRadioSelection(value);
                }
              },
            ),
            Flexible(child: widgets[i]),
          ],
        )
    ];
  }
}
