import 'package:get/get.dart';

import './resigntonewschool_controller.dart';

class ResignToNewSchoolBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ResignToNewSchoolController>(
      () => ResignToNewSchoolController(),
    );
  }
}
