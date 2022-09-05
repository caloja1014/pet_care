import 'package:get/get.dart';
import 'package:pet_care/app/data/serivces/connection_wrapper.dart';

import '../controllers/pets.controller.dart';

class PetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConnectionWrapper());
    Get.lazyPut<PetsController>(
      () => PetsController(connectionWrapper: Get.find()),
    );
  }
}
