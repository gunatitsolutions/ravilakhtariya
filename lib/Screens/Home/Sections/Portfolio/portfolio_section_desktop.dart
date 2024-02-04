import 'package:flutter/cupertino.dart';
import 'package:ravilakhtariya/Constants/constants.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Portfolio/Widget/portfolio_item.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/Portfolio/portfolio_section.dart';
import 'package:ravilakhtariya/Screens/Home/Sections/SectionWidget/section_widget.dart';

class PortfolioSectionDesktop extends PortfolioSection {
  const PortfolioSectionDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        titleWidget(),
        SectionWidget(
          sectionList: Constants.portfolios,
          itemBuilder: (BuildContext context, int index) {
            if (index % 2 == 0) {
              return PortfolioItem(
                projectType: Constants.portfolios[index].projectType,
                portfolioModel: Constants.portfolios[index].portfolioList.first,
                showImageLeading: true,
              );
            }
            return PortfolioItem(
              projectType: Constants.portfolios[index].projectType,
              portfolioModel: Constants.portfolios[index].portfolioList.first,
            );
          },
        ),
      ],
    );
  }
}
