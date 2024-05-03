import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../config/theme/light_theme_colors.dart';

class MyTextField extends StatelessWidget {
  const MyTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(16.r)),
      child: TextField(
        decoration: InputDecoration(
            suffixIcon: const Icon(
              Icons.search,
              color: LightThemeColors.hintTextColor,
            ),
            hintStyle: Get.textTheme.bodySmall,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(16.r),
                borderSide: BorderSide.none),
            fillColor: const Color.fromARGB(255, 198, 225, 240),
            filled: true,
            hintText: "ابحث عن دروس اختبارات مدارس ..."),
      ),
    );
  }
}
