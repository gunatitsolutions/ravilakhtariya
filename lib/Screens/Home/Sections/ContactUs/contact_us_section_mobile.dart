import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/ContactUs/Controllers/contact_us_controller.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/ContactUs/contact_us_section.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:get/get.dart';


class ContactUsSectionMobile extends ContactUsSection {
  ContactUsSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      key: Get.find<ContactUsController>().formKey,
      child: Column(
        children: [
          titleWidget(),
          SizedBox(height: 1.h,),
          nameTextFieldWidget(),
         // emailTextFieldWidget(),
          subjectTextFieldWidget(),
          messageTextFieldWidget(),
          sendMessageBtn(),
          SizedBox(height: 3.h,),
          footerContactSectionMobile(),
        ],
      ),
    );
  }

  footerContactSectionMobile() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        for(var contact in Constants.contactsList)
          IconButton(onPressed: (){}, icon: Icon(contact.iconData))
      ],
    );
  }
}