import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pet_care/app/widgets/pet_avatar.widget.dart';
import 'package:pet_care/config/config.dart' as config;

class PetsController extends GetxController {
  //TODO: Implement PetsController
  final nombreFocus = FocusNode();
  final razaFocus = FocusNode();
  final edadFocus = FocusNode();

  DateTime date =
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day);

  final ENV = config.ENV;
  // ignore: non_constant_identifier_names
  final count = 0.obs;

  @override
  void dispose() {
    nombreFocus.dispose();
    razaFocus.dispose();
    edadFocus.dispose();
    super.dispose();
  }

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
            mainAxisAlignment: MainAxisAlignment.center,
            // mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                alignment: Alignment.center,
                // height: Get.height * 0.8,
                constraints: BoxConstraints(
                  maxHeight: Get.height * 0.8,
                ),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Center(
                    child: Wrap(
                      spacing: 40,
                      runSpacing: 30,
                      alignment: WrapAlignment.center,
                      children: [
                        PetAvatar(
                          name: ENV["ASSETS"]['IMAGES']['PET'],
                          height: Get.height,
                          text: 'Perro',
                        ),
                        PetAvatar(
                          name: ENV["ASSETS"]['IMAGES']['PET'],
                          height: Get.height,
                          text: 'Perro',
                        ),
                        
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
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
    print("Registrar Mascota");
  }

  void increment() => count.value++;
}
