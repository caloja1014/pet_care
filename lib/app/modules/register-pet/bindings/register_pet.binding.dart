import 'package:get/get.dart';
import 'package:pet_care/app/data/serivces/connection_wrapper.dart';

import '../controllers/register_pet.controller.dart';

class RegisterPetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConnectionWrapper());
    Get.lazyPut<RegisterPetController>(
      () => RegisterPetController(connectionWrapper: Get.find()),
    );
  }
}
