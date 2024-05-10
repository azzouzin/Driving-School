import 'package:get/get.dart';

import './statspage_controller.dart';

class StatsPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StatsPageController>(
      () => StatsPageController(),
    );
  }
}
