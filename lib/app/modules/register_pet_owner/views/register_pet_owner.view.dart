import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/custom_text_field.dart';
import '../controllers/register_pet_owner.controller.dart';

class RegisterPetOwnerView extends GetView<RegisterPetOwnerController> {
  RegisterPetOwnerView({Key? key}) : super(key: key);
  final vgap = Get.height * 0.02;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 90,
              width: double.infinity,
              child: Text(
                'Registro de Dueño de Mascota',
                style: Theme.of(context).textTheme.titleLarge,
              ),
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
                              return 'Por favor, ingrese un nombre';
                            }
                            return null;
                          },
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
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Processing Data')),
                    );
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
