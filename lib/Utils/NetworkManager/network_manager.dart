import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class GetXNetworkManager extends GetxController {
  //this variable 0 = No Internet, 1 = connected to WIFI ,2 = connected to Mobile Data.
  RxInt count = 0.obs;

  int connectionType = 0;

  final Rx<bool> _internetDialogOpen = false.obs;
  bool get internetDialogOpen => _internetDialogOpen.value;


  onChangedCountShowDialog({int? counterValue}) {
    if(counterValue != null) {
      count.value = counterValue ?? 0;
    } else {
      count.value += 1;
    }
    update();
  }
  onChangeInternetDialogOPCL(bool onOffDialog) {
    _internetDialogOpen.value = onOffDialog;
    update();
  }

  //Instance of Flutter Connectivity
  final Connectivity _connectivity = Connectivity();

  //Stream to keep listening to network change state
  late StreamSubscription _streamSubscription;

  @override
  void onInit() {
    super.onInit();
    _getConnectionType();
    _streamSubscription =
        _connectivity.onConnectivityChanged.listen(_updateState);
  }

  // a method to get which connection result, if you we connected to internet or no if yes then which network
  Future<void> _getConnectionType() async {
    var _connectivityResult;
    try {
      _connectivityResult = await (_connectivity.checkConnectivity());
    } on PlatformException catch (_) {

    }
    return _updateState(_connectivityResult);
  }

  // state update, of network, if you are connected to WIFI connectionType will get set to 1,
  // and update the state to the consumer of that variable.
  _updateState(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.wifi:
        connectionType = 1;
        update();
        break;
      case ConnectivityResult.mobile:
        connectionType = 2;
        update();
        break;
      case ConnectivityResult.none:
        connectionType = 0;
        onChangedCountShowDialog();
        update();
        break;
      default:
        Get.snackbar('Network Error', 'Failed to get Network Status');
        break;
    }
  }

  @override
  void onClose() {
    //stop listening to network state when app is closed
    _streamSubscription.cancel();
  }
}
