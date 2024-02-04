import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:ravilakhtariya/Utils/Components/WidgetDecoration/customTextDecorationStyle.dart';
import 'package:ravilakhtariya/Utils/Components/custom_sizedbox.dart';
import 'package:ravilakhtariya/Utils/Components/custom_text.dart';
import 'package:ravilakhtariya/Utils/InputUtils/input_utils.dart';
import 'package:ravilakhtariya/Utils/SharedPreferences/shared_get_storage.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextFieldWidget extends StatelessWidget {
  String? title;
  String? initialValue;
  bool? showHint;
  void Function(String?)? changedValue;
  String? Function(String?)? validator;
  TextInputType? textInputType;
  TextInputAction? textInputAction;
  TextCapitalization? textCapitalization;
  bool? obSecureText;
  List<TextInputFormatter>? inputFormatter;
  bool? showTitle;
  bool? enabled;
  int? maxLength;
  int? maxLines;
  bool? readOnly;
  void Function()? onTapTextField;
  TextFieldType? textFieldType;
  TextEditingController? textEditingController;
  Widget? prefix;
  Widget? suffix;
  bool? enableBorder;
  Widget? customTitleWidget;

  TextFieldWidget(
      {super.key,
      this.title,
      this.initialValue,
      this.showHint,
      this.changedValue,
      this.onTapTextField,
      this.validator,
      this.textInputType = TextInputType.text,
      this.textInputAction = TextInputAction.done,
      this.maxLines,
      this.maxLength,
      this.readOnly,
      this.textEditingController,
      this.textCapitalization = TextCapitalization.words,
      this.obSecureText = false,
      this.inputFormatter,
      this.showTitle = false,
      this.enabled = true,
      this.textFieldType = TextFieldType.text,
      this.prefix,
      this.suffix,
      this.enableBorder = false,
      this.customTitleWidget});

  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 70,
      decoration: const BoxDecoration(
          // boxShadow: [BoxShadow(color: AppColors.app_gray_color.withOpacity(0.5),blurRadius: 0.1,spreadRadius: 0.1,offset: const Offset(-0.05,-0.05))]
          ),
      margin: EdgeInsets.symmetric(vertical: 1.h, horizontal: 0.w),
      child: (customTitleWidget != null)
          ? customWidgetWithTextField(context)
          : showTitle ?? false
              ? customTitleWithTextField(context)
              : textFieldWidgets(context),
    );
  }

  customWidgetWithTextField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        customTitleWidget ?? const SizedBox(),
        customSizedBox(0.7.h),
        textFieldWidgets(context)
      ],
    );
  }

  customTitleWithTextField(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        CustomText(
            title: title ?? '',
            fontWeight: FontWeight.w500,
            textColor: AppColors.blackColor.withAlpha(130),
            fontSize: 11.sp),
        customSizedBox(0.7.h),
        textFieldWidgets(context)
      ],
    );
  }

  textFieldWidgets(BuildContext context) {
    return TextFormField(
        showCursor: true,
        key: key,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: textEditingController,
        readOnly: readOnly ?? false,
        enabled: enabled,
        initialValue: initialValue,
        onChanged: changedValue,
        textCapitalization: textCapitalization ?? TextCapitalization.words,
        textInputAction: textInputAction,
        keyboardType: textInputType ?? getKeyBoardType(),
        obscureText: obSecureText ?? false,
        inputFormatters: inputFormatter ?? [InputUtils.lengthFormatter(1000)],
        validator: validator,
        maxLines: maxLines ?? 1,
        onTap: onTapTextField,
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
            fontSize: 13.sp,
            color: SharedPrefs.readBoolValue(PrefConstants.darkMode)
                ? AppColors.whiteColor
                : (readOnly ?? false)
                    ? AppColors.grayColor
                    : AppColors.whiteColor),
        decoration:
            CustomTextDecorationStyle.customRegistrationTextFieldDecoration(
                color: AppColors.appThemeColor,
                hintText: (showHint == true ? title ?? '' : ''),
                labelText: title ?? '',
                customHintColor: isDarkMode()
                    ? AppColors.whiteColor
                    : AppColors.grayColor,
                customLabelColor:
                    isDarkMode() ? AppColors.whiteColor : AppColors.whiteColor,
                prefix: prefix,
                suffix: suffix,
                enableBorder:
                    (enabled ?? false) ? (enableBorder ?? false) : false));
  }

  customInputFormatter() {
    switch (textFieldType) {
      case TextFieldType.phone:
        return [
          FilteringTextInputFormatter.allow(RegExp('[0-9]')),
          InputUtils.lengthFormatter(10),
        ];
      case TextFieldType.email:
        return [];
      case TextFieldType.password:
        return [];
      case TextFieldType.zip:
        return [
          FilteringTextInputFormatter.allow(RegExp('[0-9]')),
          InputUtils.lengthFormatter(6),
        ];
      default:
        break;
    }
  }

  getKeyBoardType() {
    if (textInputType == null && textFieldType == TextFieldType.phone ||
        textFieldType == TextFieldType.zip) {
      return TextInputType.phone;
    }
    return TextInputType.text;
  }


  bool isDarkMode() {
    return SharedPrefs.readBoolValue(PrefConstants.darkMode);
  }
}

enum TextFieldType { email, phone, password, amount, text, zip }
