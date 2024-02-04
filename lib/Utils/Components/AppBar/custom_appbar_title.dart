import 'package:ravilakhtariya/Utils/Components/custom_text.dart';
import 'package:flutter/cupertino.dart';

class CustomAppBarTitle extends StatelessWidget {
  final String? title;

  const CustomAppBarTitle({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return CustomText(
        title: title, textAlign: TextAlign.center, fontWeight: FontWeight.w600);
  }
}
