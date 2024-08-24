import 'package:get/get.dart';

enum NetworkState {
  idle,
  loading,
  success,
  empty,
  error;

  static const isLoading = NetworkState.loading;
  static const isSuccess = NetworkState.success;
  static const isIdle = NetworkState.idle;
  static const isEmpty = NetworkState.empty;
  static const isFailed = NetworkState.error;
}

mixin NetworkStateMixin on GetxController {
  final _networkState = NetworkState.idle.obs;
  NetworkState get state => _networkState.value;

  void setNetworkState(NetworkState value) => _networkState.value = value;
}

extension NetworkStateExtension on NetworkState {
  bool get isLoading => this == NetworkState.loading;

  bool get isSuccess => this == NetworkState.success;

  bool get isIdle => this == NetworkState.idle;

  bool get isFailed => this == NetworkState.error;
}
