import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_product_vet.controller.dart';

class RegisterProductVetView extends GetView<RegisterProductVetController> {
  final textFormFieldWidth = Get.width * 0.7;
  RegisterProductVetView({Key? key}) : super(key: key);
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
              alignment: Alignment.bottomCenter,
              height: 60,
              width: double.infinity,
              child: Text(
                'Registro local',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        width: textFormFieldWidth,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Nombre',
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        width: textFormFieldWidth,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Cantidad',
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(top: 10, bottom: 10),
                        width: textFormFieldWidth,
                        child: TextFormField(
                          decoration: const InputDecoration(
                            hintText: 'Descripción',
                          ),
                        ),
                      ),
                    ],
                  ),
                  
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: ElevatedButton(
                onPressed: () {
                  // Get.toNamed('/register_local_vet_address');
                },
                child: const Text(
                  'Añadir',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
