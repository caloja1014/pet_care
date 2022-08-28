import 'package:get/get.dart';

import '../controllers/register_local_vet.controller.dart';

class RegisterLocalVetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterLocalVetController>(
      () => RegisterLocalVetController(),
    );
  }
}
