import 'dart:async';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:get/get.dart';

class ConnectivityController extends GetxController {
  var connectionStatus = 0.obs;
  late StreamSubscription<InternetConnectionStatus> _listener;

  @override
  onInit() {
    _listener = InternetConnectionChecker()
        .onStatusChange
        .listen((InternetConnectionStatus status) {
      switch (status) {
        case InternetConnectionStatus.connected:
          connectionStatus.value = 1;
          break;
        case InternetConnectionStatus.disconnected:
          connectionStatus.value = 0;
          break;
      }
    });

    super.onInit();
  }

  @override
  void onClose() {
    _listener.cancel();
  }
}
