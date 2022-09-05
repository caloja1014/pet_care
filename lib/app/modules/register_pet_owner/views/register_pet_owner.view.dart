import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pet_care/app/routes/app_pages.dart';

import '../../../widgets/custom_text_field.dart';
import '../controllers/register_pet_owner.controller.dart';

class RegisterPetOwnerView extends GetView<RegisterPetOwnerController> {
  RegisterPetOwnerView({Key? key}) : super(key: key);
  static String petownerId = '';
  final vgap = Get.height * 0.02;
  final _formKey = GlobalKey<FormState>();
  Map<String, TextEditingController> controllers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Get.back();
          },
        ),
        title: const Text("Registro de Dueño de Mascota"),
        backgroundColor: const Color.fromRGBO(26, 192, 198, 1),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        CustomTextField(
                          textLabel: 'Cédula',
                          maxLength: 10,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, ingrese su cédula';
                            }
                            return null;
                          },
                          controller: controllers.putIfAbsent('identification', () => TextEditingController()),
                        ),
                        SizedBox(
                          height: vgap,
                        ),
                        CustomTextField(
                          textLabel: 'Nombre',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, ingrese un nombre';
                            }
                            return null;
                          },
                          controller: controllers.putIfAbsent('name', () => TextEditingController()),
                        ),
                        SizedBox(
                          height: vgap,
                        ),
                        CustomTextField(
                          textLabel: 'Apellido',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, ingrese un apellido';
                            }
                            return null;
                          },
                          controller: controllers.putIfAbsent('lastName', () => TextEditingController()),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 40),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false otherwise.
                  if (_formKey.currentState!.validate()) {
                    // If the form is valid, display a snackbar. In the real world,
                    // you'd often call a server or save the information in a database.
                    controller.postPetOwner(
                        identification: controllers['identification']!.text,
                        name: controllers['name']!.text,
                        lastName: controllers['lastName']!.text)
                    .then((value) {
                      if (value.statusCode == 200){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Agregado correctamente')),
                        );
                        petownerId = controllers['identification']!.text;
                        Get.toNamed(Routes.PETS);
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Error')),
                        );
                      }
                    });
                  }
                },
                child: const Text(
                  'Enviar',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
