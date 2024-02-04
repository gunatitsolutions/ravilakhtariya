import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class LaunchCustomURL {
  static  launchURL(String urls) async {
    var url = Uri.tryParse(urls);
    if(url != null) {
      if (await canLaunchUrl(url)) {
        await launchUrl(url);
      } else {
        throw '${'could_not_open'.tr} $url';
      }
    }
  }

}