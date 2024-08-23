import 'package:ravilakhtariya/Screens/Splash/splash_controller.dart';
import 'package:ravilakhtariya/Utils/Components/screen_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  final controller = Get.put(SplashController());

  @override
  void initState() {
    super.initState();
    controller.navigateToHome();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ScreenWidget(
        child: const SizedBox(),
        state: controller.state,
      ),
    );
  }
}
