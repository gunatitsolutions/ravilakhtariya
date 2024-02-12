import 'package:ravilakhtariya/Routes/routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  final Rx<bool> _showProgress = false.obs;
  bool get showProgress => _showProgress.value;

  @override
  void onInit() {
    super.onInit();
  }

  Future<void> navigateToHome() async {
    await Future.delayed(const Duration(milliseconds: 1000), () {
      Get.offAndToNamed(AppRoutes.home);
    });
  }

}