import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_pet.controller.dart';

class RegisterPetView extends GetView<RegisterPetController> {
  const RegisterPetView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('RegisterPetView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'RegisterPetView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
