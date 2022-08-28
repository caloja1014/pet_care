import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/app/widgets/pet_avatar.widget.dart';
import 'package:pet_care/config/config.dart' as config;

class PetsController extends GetxController {
  //TODO: Implement PetsController
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

  displayPets(BuildContext context) {
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
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child:
                  PetAvatar(
                    name: ENV["ASSETS"]['IMAGES']['PET'],
                    height: Get.height,
                    text: 'Perro',
                  ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child:
                PetAvatar(
                  name: ENV["ASSETS"]['IMAGES']['PET'],
                  height: Get.height,
                  text: 'Perro',
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
