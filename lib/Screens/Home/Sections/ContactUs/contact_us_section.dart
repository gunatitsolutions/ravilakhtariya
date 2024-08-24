import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/ContactUs/Controllers/contact_us_controller.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/ContactUs/contact_us_section_desktop.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/ContactUs/contact_us_section_mobile.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:ravilakhtariya/Utils/Components/textFieldWidget.dart';
import 'package:ravilakhtariya/Utils/Components/title_widget.dart';
import 'package:ravilakhtariya/Utils/responsive.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContactUsSection extends StatelessWidget {
  ContactUsSection({super.key});

  final contactUsController = Get.put(ContactUsController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0.w),
      child: Responsive(
        mobile: ContactUsSectionMobile(),
        tablet: ContactUsSectionDesktop(),
        desktop: ContactUsSectionDesktop(),
      ),
    );
  }

  Widget titleWidget() => TitleWidget(title: 'contactUs'.tr);

  Widget nameTextFieldWidget() {
    return TextFieldWidget(
      title: 'name'.tr,
      textEditingController: contactUsController.nameController,
      showHint: true,
      enableBorder: true,
      validator: (value) {
        if (value?.isEmpty ?? false) {
          return 'Please enter name';
        }
        return null;
      },
    );
  }

  /*emailTextFieldWidget() {
    return TextFieldWidget(
      title: 'Email',
      textEditingController: contactUsController.emailController,
      showHint: true,
      enableBorder: true,
      validator: (value) {
        if (value?.isEmpty ?? false) {
          return 'Please enter email';
        } else if (!RegexPatterns.emailRegex.hasMatch(value ?? '')) {
          return 'Please enter valid email';
        }
        return null;
      },
    );
  }*/

  Widget subjectTextFieldWidget() {
    return TextFieldWidget(
      title: 'subject'.tr,
      textEditingController: contactUsController.subjectController,
      showHint: true,
      enableBorder: true,
      validator: (value) {
        if (value?.isEmpty ?? false) {
          return 'Please enter subject';
        }
        return null;
      },
    );
  }

  Widget messageTextFieldWidget() {
    return TextFieldWidget(
      title: 'Message',
      textEditingController: contactUsController.messageController,
      showHint: true,
      maxLines: 7,
      enableBorder: true,
      validator: (value) {
        if (value?.isEmpty ?? false) {
          return 'Please enter message';
        }
        return null;
      },
    );
  }

  Widget sendMessageBtn() {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0.w),
      child: ElevatedButton(
        onPressed: () {
          if (Get.find<ContactUsController>().checkValidation()) {
            Get.find<ContactUsController>().sendMessageBtn();
          }
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.colorPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.w),
          ),
        ),
        child: const Text(
          'Send',
          style: TextStyle(
            color: AppColors.whiteColor,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
    );
  }
}
