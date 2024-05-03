import 'package:get/get.dart';

import './schooldetails_controller.dart';

class SchoolDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SchoolDetailsController>(
      () => SchoolDetailsController(),
    );
  }
}
