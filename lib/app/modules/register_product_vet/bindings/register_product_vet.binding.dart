import 'package:get/get.dart';

import '../controllers/register_product_vet.controller.dart';

class RegisterProductVetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegisterProductVetController>(
      () => RegisterProductVetController(),
    );
  }
}
