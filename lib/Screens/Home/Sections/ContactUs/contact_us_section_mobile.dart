import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/ContactUs/contact_us_section.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContactUsSectionMobile extends ContactUsSection {
  ContactUsSectionMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titleWidget(),
        nameTextFieldWidget(),
        emailTextFieldWidget(),
        subjectTextFieldWidget(),
        messageTextFieldWidget(),
        sendMessageBtn(),
        SizedBox(height: 3.h,),
        footerContactSectionMobile(),
      ],
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