import 'dart:ui';
import 'package:get/get.dart';

import '../Utils/shared_prefs.dart';

enum AppLanguages {
  en(
    langKey: 'en',
    langName: 'English',
    countryName: 'US',
  ),
  gu(
    langKey: 'gu',
    langName: 'Gujarati',
    countryName: 'IN',
  ),
  hi(
    langKey: 'hi',
    langName: 'Hindi',
    countryName: 'IN',
  ),
 /* ml(
    langKey: 'ml',
    langName: 'Malayalam',
    countryName: 'IN',
  ),
  ta(
    langKey: 'ta',
    langName: 'Tamil',
    countryName: 'IN',
  ),
  mr(
    langKey: 'mr',
    langName: 'Marathi',
    countryName: 'IN',
  ),*/
  ar(
    langKey: 'ar',
    langName: 'Arabic',
    countryName: 'SA',
  );

  final String langKey;
  final String langName;
  final String countryName;

  const AppLanguages({
    required this.langKey,
    required this.langName,
    required this.countryName,
  });
}

class LanguageService extends GetxService {
  final Rx<AppLanguages> _currentLanguage = AppLanguages.en.obs;

  AppLanguages get currentLanguage {
    final appLanguage = SharedPrefs.instance.read(key: PrefConstants.language);
    if (appLanguage is AppLanguages) {
      return appLanguage;
    }
    return _currentLanguage.value;
  }

  late Locale _locale;

  Locale get locale => _locale;

  LanguageService() {
    _locale = Locale(currentLanguage.langKey, currentLanguage.countryName);
  }

  void changeLanguage(AppLanguages language) {
    SharedPrefs.instance.writeValue(PrefConstants.language, language);
    _currentLanguage.value = language;
    Get.updateLocale(Locale(language.langKey, language.countryName));
    _locale = Get.deviceLocale ??
        Locale(currentLanguage.langKey, currentLanguage.countryName);

  }
}
