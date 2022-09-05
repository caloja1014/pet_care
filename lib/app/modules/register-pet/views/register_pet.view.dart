import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:get/get.dart';
import 'package:pet_care/app/modules/register_pet_owner/views/register_pet_owner.view.dart';

import '../../../routes/app_pages.dart';
import '../../../widgets/custom_text_field.dart';
import '../controllers/register_pet.controller.dart';

class RegisterPetView extends GetView<RegisterPetController> {
  RegisterPetView({Key? key}) : super(key: key);
  final vgap = Get.height * 0.02;
  final _formKey = GlobalKey<FormState>();
  Map<String, TextEditingController> controllers = {};
  TextEditingController _date = TextEditingController();
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
        title: const Text("Registrar Mascota"),
        backgroundColor: const Color.fromRGBO(26, 192, 198, 1),
        centerTitle: true,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(
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
                          textLabel: 'Raza',
                          maxLines: 5,
                          maxLength: 200,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, ingrese una raza';
                            }
                            return null;
                          },
                          controller: controllers.putIfAbsent('breed', () => TextEditingController()),
                        ),
                        SizedBox(
                          height: vgap,
                        ),
                        CustomTextField(
                          textLabel: 'Fecha de nacimiento',
                          controller: _date,
                          function: () async {
                            DateTime? picked_date = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime.now());
                            if (picked_date != null) {
                              _date.text =
                                  DateFormat('yyyy-MM-dd').format(picked_date);
                            }
                          },
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor, elija una fecha';
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
                    int pet_age = controller.calculateAge(DateTime.tryParse(_date.text));
                    print(RegisterPetOwnerView.petownerId);
                    controller.postPet(
                        breed: controllers['breed']!.text,
                        name: controllers['name']!.text,
                        age: pet_age,
                        petownerIdentification: RegisterPetOwnerView.petownerId)
                    .then((value) {
                      if (value.statusCode == 200) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Agregado Correctamente')),
                        );
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
