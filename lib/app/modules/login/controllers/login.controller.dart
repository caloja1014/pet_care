import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/config/config.dart' as config;

class LoginController extends GetxController {
  //TODO: Implement LoginController
  final ENV = config.ENV;
  // ignore: non_constant_identifier_names
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  displayRegisterType(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                child: CircleAvatar(
                  radius: 70,
                  child: Image.asset(
                    ENV["ASSETS"]['IMAGES']['OWNER'],
                     width: 50,
                  height: 50,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 80,
                child: Image.asset(
                  ENV["ASSETS"]['IMAGES']['PET_SHOP'],
                  width: 50,
                  height: 50,
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void increment() => count.value++;
}
