import 'package:get/get.dart';
import 'package:pet_care/app/data/serivces/connection_wrapper.dart';

import '../controllers/register_pet_owner.controller.dart';

class RegisterPetOwnerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConnectionWrapper());
    Get.lazyPut<RegisterPetOwnerController>(
      () => RegisterPetOwnerController(connectionWrapper: Get.find()),
    );
  }
}
