import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pet_care/app/routes/app_pages.dart';

import '../controllers/pets.controller.dart';

class PetsView extends GetView<PetsController> {
  final textFormFieldWidth = Get.width * 0.7;
  PetsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            homeButton(
              'Actualizar Perfil',
              () {
                Get.toNamed(Routes.UPDATE_PET_OWNER);
              },
            ),
            homeButton('Añadir mascota', () {
              Get.toNamed(Routes.REGISTER_PET);
            }),
            homeButton('Mostrar mascotas', () {
              controller.displayPets(context);
            }),
            homeButton(
              'Mostrar productos',
              () {
                Get.toNamed(Routes.PRODUCTS);
              },
            ),
            homeButton('Salir', () {
              Get.toNamed(Routes.LOGIN);
            }),
          ],
        ),
      ),
    );
  }

  Widget homeButton(String text, onPressed) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
