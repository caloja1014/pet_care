import 'package:get/get.dart';

import '../controllers/pets.controller.dart';

class PetsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PetsController>(
      () => PetsController(),
    );
  }
}
