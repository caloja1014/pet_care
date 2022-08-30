import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/app/routes/app_pages.dart';
import 'package:pet_care/app/widgets/register_avatar.widget.dart';
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
      barrierColor: Colors.black87,
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
              RegisterAvatar(
                height: Get.height,
                name: ENV["ASSETS"]['IMAGES']['OWNER'],
                text: 'Dueño',
                onTap: () {
                  Get.toNamed(Routes.REGISTER_PET_OWNER);
                },
              ),
              const SizedBox(
                height: 30,
              ),
              RegisterAvatar(
                height: Get.height,
                name: ENV["ASSETS"]['IMAGES']['PET_SHOP'],
                text: 'Local o Veterinaria',
                onTap: () {
                  Get.toNamed(Routes.REGISTER_LOCAL_VET);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  void increment() => count.value++;
}
