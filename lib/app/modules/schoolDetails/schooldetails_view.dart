import 'package:flutter/material.dart';
import 'package:get/get.dart';

import './schooldetails_controller.dart';

class SchoolDetailsView extends GetView<SchoolDetailsController> {
  const SchoolDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<SchoolDetailsController>(
        builder: (controller) {
         return const Center(child: Text("schoolDetailsView"));
        },
      ),
    );
  }
}
    