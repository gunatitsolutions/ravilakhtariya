import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';

class NetworkUtils {
  Future<bool> checkIsInternet() async {
    if (kIsWeb) return true;
    final connectivityResult = await (Connectivity().checkConnectivity());
    switch (connectivityResult) {
      case ConnectivityResult.mobile:
      case ConnectivityResult.ethernet:
      case ConnectivityResult.wifi:
        return true;
      default:
        return false;
    }
  }

  dynamic checkInternet(Function func) {
    checkIsInternet().then((internet) {
      if (internet) {
        func(true);
      }
      func(false);
    });
  }
}
