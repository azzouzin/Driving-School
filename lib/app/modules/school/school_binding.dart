import 'package:get/get.dart';

import './school_controller.dart';

class SchoolBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SchoolController>(
      () => SchoolController(),
    );
  }
}
