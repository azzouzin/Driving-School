import 'package:get/get.dart';

import '../../../utils/constants.dart';
import '../../data/remote/api_call_status.dart';
import '../../data/remote/base_client.dart';

class HomeController extends GetxController {
  // hold data coming from api
  List<Map<dynamic, dynamic>> data = [];

  // api call status
  ApiCallStatus apiCallStatus = ApiCallStatus.success;

  @override
  void onInit() {
    super.onInit();
  }
}
