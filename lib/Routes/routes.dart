import 'package:ravilakhtariya/Screens/Home/home_screen.dart';
import 'package:ravilakhtariya/Screens/Splash/splash_screen.dart';
import 'package:get/get.dart';


class AppRoutes {
  static var splash = "/";
  static var home = "/home";
}

class AppPages {
  static List<GetPage> getPageRoutes = [
    GetPage(name: AppRoutes.splash, page: () => const SplashScreen()),
    GetPage(name: AppRoutes.home, page: () =>  const HomeScreen()),
  ];
}