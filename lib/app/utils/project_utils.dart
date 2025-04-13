class ProjectUtils {
  final String banners;
  final String icons;
  final String titles;
  final String description;
  final String links;
  ProjectUtils({
    required this.banners,
    required this.icons,
    required this.titles,
    required this.description,
    required this.links,
  });
}

List<ProjectUtils> projectUtils = [
  
  ProjectUtils(
    banners: 'assets/imgs/07.png',
    icons: 'assets/imgs/react.png',
    titles: 'Expense-Tracker',
    description:
        'Fully functional, responsive React-based Expense Tracker website, source code is also available, check below.',
    links: 'https://azaz-ali-expense-tracker-4uej.vercel.app',
  ),
  ProjectUtils(
    banners: 'assets/imgs/05.png',
    icons: 'assets/imgs/flutter.png',
    titles: 'Awesome Alive Service App',
    description:
        'This is a just Fully function Service Booking App by using flutter, source code is also available, check below.',
    links: 'https://github.com/azazali0786/alive_service_app',
  ),
  ProjectUtils(
    banners: 'assets/imgs/04.png',
    icons: 'assets/imgs/react.png',
    titles: 'Alive Shop',
    description:
        'This is a product shopping website UI built using React, source code is also available, check below.',
    links: 'https://67c8a965acee1fa5f96ca753--alive-shop-azaz.netlify.app/',
  ),
];
