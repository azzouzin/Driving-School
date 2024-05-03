import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          CircleAvatar(
            child: Image.asset("assets/images/person1.png"),
          ),
          Gap(16.w),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "مرحبا بك",
                style: Get.textTheme.labelLarge,
              ),
              Text(
                "السياقة فن و احترام",
                style: Get.textTheme.labelMedium,
              ),
            ],
          )
        ],
      ),
    );
  }
}
