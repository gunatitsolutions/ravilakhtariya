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

  ContactUsController contactUsController = Get.put(ContactUsController());

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0.w),
      child: Responsive(
          mobile: ContactUsSectionMobile(),
          tablet: ContactUsSectionDesktop(),
          desktop: ContactUsSectionDesktop()),
    );
  }

  Widget titleWidget() {
    return const TitleWidget(title: 'Contact Us');
  }

  nameTextFieldWidget() {
    return TextFieldWidget(
      title: 'Name',
      textEditingController: contactUsController.nameController,
      showHint: true,
      enableBorder: true,
    );
  }

  emailTextFieldWidget() {
    return TextFieldWidget(
      title: 'Email',
      textEditingController: contactUsController.emailController,
      showHint: true,
      enableBorder: true,
    );
  }

  subjectTextFieldWidget() {
    return TextFieldWidget(
      title: 'Subject',
      textEditingController: contactUsController.subjectController,
      showHint: true,
      enableBorder: true,
    );
  }

  messageTextFieldWidget() {
    return TextFieldWidget(
      title: 'Message',
      textEditingController: contactUsController.messageController,
      showHint: true,
      maxLines: 7,
      enableBorder: true,
    );
  }

  sendMessageBtn() {
    return Padding(
      padding: EdgeInsets.all(2.0.w),
      child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.colorPrimary,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(1.w),
            ),
          ),
          child: const Text(
            'Send Message',
            style: TextStyle(
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w600,
            ),
          )),
    );
  }

}
