import 'package:get/get.dart';

import './carrepair_controller.dart';

class CarRepairBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CarRepairController>(
      () => CarRepairController(),
    );
  }
}
