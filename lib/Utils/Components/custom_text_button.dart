import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:ravilakhtariya/Utils/Components/custom_text.dart';

class CustomTextButton extends StatelessWidget {
  final VoidCallback? onTap;
  final CustomText? customText;
  final IconData? customIcon;
  final Color? backgroundColor;
  final Clip? clip;
  final Size? size;

  const CustomTextButton({
    super.key,
    this.onTap,
    this.customText,
    this.customIcon,
    this.backgroundColor,
    this.clip,
    this.size
  });

  @override
  Widget build(BuildContext context) {
    return (customIcon != null)
        ? const CustomIconTextButton()
        : TextButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor ?? AppColors.bgColor,
      ),
      clipBehavior: clip ?? Clip.none,
      child: customText ?? const SizedBox(),
    );
  }
}

class CustomIconTextButton extends CustomTextButton {

  @override
  const CustomIconTextButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: super.onTap,
      icon: Icon(super.customIcon),
      label: super.customText ?? const Text(''),
      clipBehavior: clip ?? Clip.none,
      style: TextButton.styleFrom(
        backgroundColor: super.backgroundColor ?? AppColors.bgColor,

      ),);
  }

}