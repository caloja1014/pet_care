import 'package:get/get.dart';

import '../controllers/locals_home.controller.dart';

class LocalsHomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LocalsHomeController>(
      () => LocalsHomeController(),
    );
  }
}
