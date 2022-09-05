import 'package:get/get.dart';
import 'package:pet_care/app/data/serivces/connection_wrapper.dart';

import '../controllers/register_local_vet.controller.dart';

class RegisterLocalVetBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConnectionWrapper());
    Get.lazyPut<RegisterLocalVetController>(
      () => RegisterLocalVetController(connectionWrapper: Get.find()),
    );
  }
}
