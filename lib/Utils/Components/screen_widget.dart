import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ScreenWidget extends StatelessWidget {
  Widget? customWidget;
  bool? showProgressBar;
  bool? replaceWidget;
  double? opacity;

  ScreenWidget(
      {super.key,
      this.customWidget,
      this.showProgressBar,
      this.replaceWidget = false,
      this.opacity});

  @override
  Widget build(BuildContext context) {
    if (replaceWidget ?? false) {
      return (showProgressBar ?? false)
          ? customLoaderWidget()
          : (customWidget ?? const SizedBox());
    }
    return Stack(
      children: [
        customWidget ?? Container(),
        (showProgressBar ?? false) ? customLoaderWidget() : const SizedBox(),
      ],
    );
  }

  customLoaderWidget() {
    return Container(
      width: 100.w,
      height: Get.height,
      color: AppColors.whiteColor.withOpacity(opacity ?? 0.4),
      alignment: Alignment.center,
      child: const SizedBox(
          width: 50, height: 50, child: CircularProgressIndicator()),
    );
  }
}
