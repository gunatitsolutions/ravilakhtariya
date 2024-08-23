import 'package:get/get.dart';
import 'package:ravilakhtariya/Utils/NetworkManager/network_manager.dart';
import '../Themes/AppTheme/theme_service.dart';

class CommonBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ThemeService>(() => ThemeService());
    Get.lazyPut<GetXNetworkManager>(() => GetXNetworkManager());
  }
}
