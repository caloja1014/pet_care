import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/app/widgets/pet_avatar.widget.dart';
import 'package:pet_care/app/widgets/register_form.widget.dart';
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
              ElevatedButton(
                onPressed: () {
                  displayRegisterPetForm(context);
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(20),
                  primary: Colors.blue,
                  onPrimary: Colors.white,
                ),
                child: const Icon(Icons.add, color: Colors.white),
              )
            ],
          ),
        );
      },
    );
  }

  displayRegisterPetForm(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.white60,
      builder: (BuildContext context) {
        return AlertDialog(
          elevation: 0,
          backgroundColor: Colors.transparent,
          content:
            RegisterForm()
        );
      },
    );
  }

  void increment() => count.value++;
}
