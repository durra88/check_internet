import 'package:check_internet/screen/internet_connection_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/internet_controller.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);
  var connectivityController = Get.put(ConnectivityController());
  Color color = Colors.green;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: color,
        appBar: AppBar(
          title: const Text("check internet Connection"),
        ),
        body: Obx(() => connectivityController.connectionStatus.value == 0
            ? const CheckInternetWidget()
            : Center(
                child: Container(
                child: const Text(
                  "welcome",
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ))));
  }
}
