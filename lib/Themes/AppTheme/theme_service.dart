import 'package:get/get.dart';

class ThemeService extends GetxService {
  final _darkTheme = false.obs;
  bool get darkTheme => _darkTheme.value;

  void onChangedTheme(bool themeMode) => _darkTheme.value = themeMode;
}
