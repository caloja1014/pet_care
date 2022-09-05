import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pet_care/app/routes/app_pages.dart';
import 'package:pet_care/app/widgets/custom_text_field.dart';

import '../controllers/register_local_vet.controller.dart';

class RegisterLocalVetView extends GetView<RegisterLocalVetController> {
  RegisterLocalVetView({Key? key}) : super(key: key);
  final vgap = Get.height * 0.02;
  final _formKey = GlobalKey<FormState>();
  Map<String, TextEditingController> controllers = {};
  RxBool value = true.obs;
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
        title: const Text("Registro"),
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
                        dropDownCustom(context),
                        SizedBox(
                          height: vgap,
                        ),
                        CustomTextField(
                          textLabel: 'Nombre',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingrese un nombre';
                            }
                            return null;
                          },
                          controller: controllers.putIfAbsent(
                            'name',
                            () => TextEditingController(),
                          ),
                        ),
                        SizedBox(
                          height: vgap,
                        ),
                        CustomTextField(
                          textLabel: 'RUC',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingrese el RUC';
                            }
                            return null;
                          },
                          controller: controllers.putIfAbsent(
                            'ruc',
                            () => TextEditingController(),
                          ),
                        ),
                        SizedBox(
                          height: vgap,
                        ),
                        CustomTextField(
                          textLabel: 'Descripción',
                          maxLines: 5,
                          maxLength: 200,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingrese una descripción';
                            }

                            return null;
                          },
                          controller: controllers.putIfAbsent(
                            'description',
                            () => TextEditingController(),
                          ),
                        ),
                        SizedBox(
                          height: vgap,
                        ),
                        CustomTextField(
                          textLabel: 'Correo',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingrese un correo';
                            }

                            return null;
                          },
                        ),
                        SizedBox(
                          height: vgap,
                        ),
                        CustomTextField(
                          textLabel: 'Constraseña',
                          obscureText: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Por favor ingrese una contraseña';
                            }
                            return null;
                          },
                          controller: controllers.putIfAbsent(
                            'password',
                            () => TextEditingController(),
                          ),
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
                    controller
                        .postLocal(
                      name: controllers['name']!.text,
                      description: controllers['description']!.text,
                      isVeterinary: value.value,
                      ownerIdentification: controllers['ruc']!.text,
                    )
                        .then((value) {
                      if (value.statusCode == 200) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Agregado correctamente')),
                        );
                        
                        Get.toNamed(Routes.LOGIN);
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

  Widget dropDownCustom(context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: const EdgeInsets.fromLTRB(45, 10, 40, 0),
          child: Text(
            'Tipo',
            textAlign: TextAlign.left,
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
          width: double.infinity,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: const Color(0xFFF3F3F3),
              border: Border.all(
                color: const Color(0xFFF3F3F3),
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: Obx(
                  () => DropdownButton<bool>(
                    dropdownColor: const Color(0xFFF3F3F3),
                    elevation: 8,
                    isExpanded: true,
                    borderRadius: BorderRadius.circular(10),
                    underline: Container(),
                    value: value.value,
                    items:
                        [true, false].map<DropdownMenuItem<bool>>((bool value) {
                      return DropdownMenuItem<bool>(
                        value: value,
                        child: Text(value ? 'Veterinaria' : 'Local'),
                      );
                    }).toList(),
                    onChanged: (value2) {
                      value.value = value2!;
                    },
                  ),
                )),
          ),
        ),
      ],
    );
  }
}
