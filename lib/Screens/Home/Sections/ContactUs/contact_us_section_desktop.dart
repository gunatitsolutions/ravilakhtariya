import 'package:flutter/material.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/ContactUs/contact_us_section.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/SectionWidget/section_widget.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ContactUsSectionDesktop extends ContactUsSection {
  ContactUsSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titleWidget(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              constraints: BoxConstraints(
                minWidth: 40.w,
                maxWidth: 50.w
              ),
              alignment: Alignment.centerLeft,
              child: Column(
                children: [
                  nameTextFieldWidget(),
                  emailTextFieldWidget(),
                  subjectTextFieldWidget(),
                  messageTextFieldWidget(), sendMessageBtn()
                ],
              ),
            ),
            Flexible(child: footerContactSectionMobile()),
          ],
        )
      ],
    );
  }

  footerContactSectionMobile() {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 40.w,
        maxWidth: 45.w
      ),
      child: SectionWidget(
        sectionList: Constants.contactsList,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: (){},
            leading: Icon(Constants.contactsList[index].iconData),
            title: Text(Constants.contactsList[index].contactDetail,style: TextStyle(fontSize: 14.sp,color: AppColors.whiteColor),),
          );
        },
      ),
    );
  }
}