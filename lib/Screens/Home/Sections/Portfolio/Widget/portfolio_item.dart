import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Portfolio/Model/portfolio_model.dart';
import 'package:ravilakhtariya/Themes/app_color.dart';
import 'package:ravilakhtariya/Themes/app_image.dart';
import 'package:ravilakhtariya/Utils/launch_custom_url.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PortfolioItem extends StatelessWidget {
  final bool? showImageLeading;
  final String projectType;

  const PortfolioItem(
      {super.key,
        required this.portfolioModel,
        this.showImageLeading,
        required this.projectType});

  final PortfolioModel portfolioModel;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 2.0.w),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          (showImageLeading ?? false)
              ? _imageWidget()
              : const SizedBox.shrink(),
          Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _projectType(),
                  SizedBox(
                    height: 0.2.h,
                  ),
                  _title(),
                  SizedBox(
                    height: 0.2.h,
                  ),
                  _description(),
                  SizedBox(
                    height: 1.h,
                  ),
                  _urlLink(),
                  SizedBox(
                    height: 1.h,
                  ),
                  Wrap(
                    alignment: WrapAlignment.start,
                    children: [exploreButton(), nextAppButton()],
                  )
                ],
              )),
          !(showImageLeading ?? false)
              ? _imageWidget()
              : const SizedBox.shrink(),
        ],
      ),
    );
  }

  Widget _imageWidget() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 2.w,
      ),
      child: Image(
        image: AssetImage(
          portfolioModel.image.isNotEmpty
              ? portfolioModel.image
              : AppImage.raviLakhtariya,
        ),
        fit: BoxFit.cover,
        width: 40.w,
      ),
    );
  }

  Widget _projectType() {
    return Text(
      projectType.toUpperCase(),
      style: GoogleFonts.oswald(
        fontWeight: FontWeight.w600,
        fontSize: 13.sp,
        color: AppColors.colorPrimary,
      ),
      maxLines: 2,
    );
  }

  Widget _title() {
    return Text(
      portfolioModel.title,
      style: GoogleFonts.oswald(fontWeight: FontWeight.w600, fontSize: 17.sp),
      maxLines: 2,
    );
  }

  Widget _urlLink() {
    if (portfolioModel.link.contains('https://play.google.com/')) {
      return IconButton(
          onPressed: () {
            LaunchCustomURL.launchURL(portfolioModel.link);
          },
          icon: Icon(
            FontAwesomeIcons.googlePlay,
            size: 18.sp,
          ));
    }
    return Text(
      portfolioModel.link,
      style: GoogleFonts.oswald(fontWeight: FontWeight.normal, fontSize: 12.sp),
      maxLines: 2,
    );
  }

  Widget _description() {
    return Text(
      portfolioModel.description,
      style: GoogleFonts.oswald(
        fontWeight: FontWeight.w500,
        fontSize: 12.sp,
      ),
      maxLines: 3,
      textAlign: TextAlign.justify,
    );
  }

  Widget exploreButton() {
    return Padding(
      padding: EdgeInsets.all(0.5.w),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.colorPrimary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.w),
          ),
        ),
        child: Text(
          'EXPLORE MORE',
          style: GoogleFonts.oswald(
            fontSize: 13.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }

  Widget nextAppButton() {
    return Padding(
      padding: EdgeInsets.all(0.5.w),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(1.w),
            side: const BorderSide(
              color: AppColors.colorPrimary,
            ),
          ),
        ),
        child: Text(
          'NEXT',
          style: GoogleFonts.oswald(
            fontSize: 13.sp,
            fontWeight: FontWeight.w700,
            color: AppColors.colorPrimary,
          ),
        ),
      ),
    );
  }
}
