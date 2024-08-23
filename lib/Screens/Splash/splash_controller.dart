import 'package:ravilakhtariya/Routes/routes.dart';
import 'package:get/get.dart';
import 'package:ravilakhtariya/Utils/mixins/network_state_mixin.dart';

class SplashController extends GetxController with NetworkStateMixin {
  Future<void> navigateToHome() async {
    setNetworkState(NetworkState.isLoading);
    await Future.delayed(const Duration(milliseconds: 1000), () {
      setNetworkState(NetworkState.success);
      Get.offAndToNamed(AppRoutes.home);
    });
  }
}
