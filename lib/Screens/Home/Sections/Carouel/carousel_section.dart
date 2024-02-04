import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Carouel/carousel_section_desktop.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Carouel/carousel_section_mobile.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:ravilakhtariya/Themes/app_image.dart';
import 'package:ravilakhtariya/Utils/launch_custom_url.dart';
import 'package:ravilakhtariya/Utils/responsive.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CarouselSection extends StatelessWidget {
  const CarouselSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
        mobile: CarouselSectionMobile(),
        tablet: CarouselSectionMobile(),
        desktop: CarouselSectionDesktop());
  }

  carouseInfoWidget() {
    return Container(
      padding: EdgeInsets.only(left: 4.w),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppImage.raviLakhtariya,
              ),
              alignment: Alignment.bottomRight
          )
      ),
      child: Stack(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'ravi'.toUpperCase(),
                style: GoogleFonts.oswald(
                  fontSize: 30.sp,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.left,
              ),
              Text(
                'lakhtariya'.toUpperCase(),
                style: GoogleFonts.oswald(
                  fontSize: 30.sp,
                ),
                textAlign: TextAlign.left,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.play_arrow_rounded,
                    color: AppColors.orangeColor,
                  ),
                  textOfTools(),
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              _socialLinks(),
            ],
          ),
        ],
      ),
    );
  }

  textOfTools() {
    return AnimatedTextKit(
      animatedTexts: [
        TyperAnimatedText(
          ' IOS Developer/ Flutter Developer',
          speed: const Duration(milliseconds: 50),
          textStyle: _textToolStyle(),
        ),
        TyperAnimatedText(
          ' Graphic Designer',
          speed: const Duration(milliseconds: 50),
          textStyle: _textToolStyle(),
        ),
        TyperAnimatedText(
          ' Photographer',
          speed: const Duration(milliseconds: 50),
          textStyle: _textToolStyle(),
        ),
        TyperAnimatedText(
          ' Story/Drama Writer',
          speed: const Duration(milliseconds: 50),
          textStyle: _textToolStyle(),
        ),
        TyperAnimatedText(
          ' A friend.',
          speed: const Duration(milliseconds: 50),
          textStyle: _textToolStyle(),
        ),
      ],
      isRepeatingAnimation: true,
    );
  }

  _textToolStyle() {
    return GoogleFonts.oswald(fontSize: 14.sp, color: AppColors.colorPrimary);
  }

  _socialLinks() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        _socialIconWidget(
            iconData: FontAwesomeIcons.linkedin, urlLink: SocialLinks.linkedin),
        _socialIconWidget(
            iconData: FontAwesomeIcons.instagram,
            urlLink: SocialLinks.instagram),
        _socialIconWidget(
            iconData: FontAwesomeIcons.twitter, urlLink: SocialLinks.twitter),
        _socialIconWidget(
            iconData: FontAwesomeIcons.youtube, urlLink: SocialLinks.youtube),
        _socialIconWidget(
            iconData: FontAwesomeIcons.pen, urlLink: SocialLinks.pratilipi),
        _socialIconWidget(
            iconData: FontAwesomeIcons.googlePlay,
            urlLink: SocialLinks.playStore),
      ],
    );
  }

  _socialIconWidget({required IconData iconData, required String urlLink}) {
    return IconButton(
      onPressed: () {
        LaunchCustomURL.launchURL(urlLink);
      },
      icon: Icon(
        iconData,
      ),
    );
  }
}
