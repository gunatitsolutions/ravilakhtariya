class PortfoliosModel {
  final String projectType;
  final List<PortfolioModel> portfolioList;

  const PortfoliosModel({
    required this.projectType,
    required this.portfolioList
  });
}

class PortfolioModel {
  final String image;
  final String title;
  final String description;
  final String link;

  const PortfolioModel(
      {
        required this.image,
        required this.title,
        required this.description,
        required this.link});
}
