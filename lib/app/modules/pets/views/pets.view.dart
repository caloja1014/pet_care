import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/pets.controller.dart';

class PetsView extends GetView<PetsController> {
  final textFormFieldWidth = Get.width * 0.7;
  PetsView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Perfil"),
        backgroundColor: Color.fromRGBO(26, 192, 198, 1),
      ),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  controller.displayUpdateProfileForm(context);
                },
                child: const Text(
                  'Actualizar Perfil',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  controller.displayPets(context);
                },
                child: const Text(
                  'Mostrar Mascotas',
                  style: const TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
