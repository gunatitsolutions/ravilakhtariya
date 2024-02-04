import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Portfolio/portfolio_section_desktop.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Portfolio/portfolio_section_mobile.dart';
import 'package:ravilakhtariya/Utils/Components/title_widget.dart';
import 'package:ravilakhtariya/Utils/responsive.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0.w),
      child: const Responsive(
        mobile: PortfolioSectionMobile(),
        tablet: PortfolioSectionMobile(),
        desktop: PortfolioSectionDesktop(),
      ),
    );
  }

  Widget titleWidget() {
    return const TitleWidget(title: 'Portfolio');
  }
}
