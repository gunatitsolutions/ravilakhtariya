import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoHelper {
  static Future<String> getPackageInfoVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    var packageInfoVersion = packageInfo.version;
    return packageInfoVersion;
  }
}

class DeviceInfoHelper {
  static Future<String> getDeviceUDID() async {
    DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
    if(Platform.isIOS) {
      IosDeviceInfo iosInfo = await deviceInfoPlugin.iosInfo;
      return iosInfo.identifierForVendor ?? '';
    } else if(Platform.isAndroid){
      AndroidDeviceInfo androidDeviceInfo = await deviceInfoPlugin.androidInfo;
      return '${androidDeviceInfo.id} ${androidDeviceInfo.brand} ${androidDeviceInfo.model} ${androidDeviceInfo.device} ${androidDeviceInfo.serialNumber}';
    } else {
      return '';
    }
  }
}