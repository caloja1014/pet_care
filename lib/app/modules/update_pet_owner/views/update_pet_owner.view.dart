import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:pet_care/app/routes/app_pages.dart';

import '../../../widgets/custom_text_field.dart';
import '../../register_pet_owner/views/register_pet_owner.view.dart';
import '../controllers/update_pet_owner.controller.dart';

class UpdatePetOwnerView extends GetView<UpdatePetOwnerController> {
  UpdatePetOwnerView({Key? key}) : super(key: key);
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
        title: const Text("Actualizar Perfil"),
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
                    if(RegisterPetOwnerView.petownerId == ''){
                      print("Está nulo");
                    }else{
                      print(RegisterPetOwnerView.petownerId);
                    }
                    controller.updatePetOwner(
                        identification: RegisterPetOwnerView.petownerId,
                        name: controllers['name']!.text,
                        lastName: controllers['lastName']!.text)
                        .then((value) {
                      if (value.statusCode == 200){
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Agregado correctamente')),
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
