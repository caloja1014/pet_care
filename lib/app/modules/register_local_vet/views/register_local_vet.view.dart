import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_local_vet.controller.dart';

class RegisterLocalVetView extends GetView<RegisterLocalVetController> {
  RegisterLocalVetView({Key? key}) : super(key: key);
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
                'Registro',
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
                      mainAxisSize: MainAxisSize.max,
                      children: [
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
                              padding:
                                  const EdgeInsets.only(left: 20, right: 20),
                              child: DropdownButton<bool>(
                                dropdownColor: const Color(0xFFF3F3F3),
                                elevation:8,
                                isExpanded: true,
                                borderRadius: BorderRadius.circular(10),
                                underline: Container(),
                                value: true,
                                items: [true, false]
                                    .map<DropdownMenuItem<bool>>((bool value) {
                                  return DropdownMenuItem<bool>(
                                    value: value,
                                    child:
                                        Text(value ? 'Veterinaria' : 'Local'),
                                  );
                                }).toList(),
                                onChanged: (value) {},
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
