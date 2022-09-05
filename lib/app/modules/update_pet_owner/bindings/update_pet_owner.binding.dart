import 'package:get/get.dart';
import 'package:pet_care/app/data/serivces/connection_wrapper.dart';

import '../controllers/update_pet_owner.controller.dart';

class UpdatePetOwnerBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConnectionWrapper());
    Get.lazyPut<UpdatePetOwnerController>(
          () => UpdatePetOwnerController(connectionWrapper: Get.find()),
    );
  }
}
