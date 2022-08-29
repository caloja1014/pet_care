import 'package:get/get.dart';

import '../controllers/register_pet.controller.dart';

class RegisterPetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterPetController>(
      () => RegisterPetController(),
    );
  }
}
