import 'package:get/get.dart';
import 'CountryViseLanguage/arebic_ar_eg.dart';
import 'CountryViseLanguage/english_en_us.dart';
import 'CountryViseLanguage/gujarati_gu_in.dart';
import 'CountryViseLanguage/hindi_hi_in.dart';

class Languages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en_US': keyEnglishLanguage,
        'hi_IN': keyHindiLanguage,
        'gu_IN': keyGujaratiLanguage,
        'ar_SA': keyArabicLanguage,
        'ar_eg': keyArabicLanguage,
        // 'ta_IN': keyTamilLanguage,
        // 'mr_IN': keyMarathiLanguage,
        // 'ml_IN': keyMalyalamLanguage
      };
}
