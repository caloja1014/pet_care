import 'package:get/get.dart';

import '../controllers/register_pet_owner.controller.dart';

class RegisterPetOwnerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterPetOwnerController>(
      () => RegisterPetOwnerController(),
    );
  }
}
