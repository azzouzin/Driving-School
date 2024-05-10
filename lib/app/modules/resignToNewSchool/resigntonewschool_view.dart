import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/components/custom_snackbar.dart';

import './resigntonewschool_controller.dart';

class ResignToNewSchoolView extends GetView<ResignToNewSchoolController> {
  const ResignToNewSchoolView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          ListView.builder(
            itemBuilder: (context, index) =>
                Image.asset("assets/images/c${index + 4}.jpg"),
            itemCount: 3,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "العقد",
              style: Get.theme.textTheme.bodyLarge,
            ),
          ),
          Positioned(
            bottom: 10,
            left: Get.width / 2 - 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 20.w)),
              onPressed: () {
                Get.back();
                Get.back();
                Get.back();
                CustomSnackBar.showCustomSnackBar(
                    title: 'تم التوقيع على العقد',
                    message:
                        'انت الان تلميذ في مدرسة الفتح تم التوقيع على العقد');
              },
              child: const Text(
                "التوقيع على العقد",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
