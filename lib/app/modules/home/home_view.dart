import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import '../../components/custom_app_bar.dart';
import '../../components/custom_text_field.dart';
import '../../components/school_card.dart';
import '../../data/local/dummy_data.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.w),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const MyAppBar(),
            Gap(16.h),
            const MyTextField(),
            Gap(16.h),
            Text(
              "مدارس قريبة منك",
              style: Get.textTheme.bodyLarge,
            ),
            Gap(16.h),
            SizedBox(
              height: 150.h,
              width: 350.w,
              child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: 3,
                  separatorBuilder: (context, index) => Gap(20.w),
                  itemBuilder: (context, i) {
                    return SchoolCard(
                      schoolModel: listOfSchools[i],
                    );
                  }),
            ),
            Gap(16.h),
            Text(
              "الاكثر تقييما",
              style: Get.textTheme.bodyLarge,
            ),
            Gap(16.h),
            Expanded(
              child: GridView.builder(
                itemCount: 3,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 12.w,
                    crossAxisSpacing: 12.w),
                itemBuilder: (context, index) => SchoolCard(
                  schoolModel: listOfSchools[index],
                ),
              ),
            )
          ]),
        ),
      ),
    );
  }
}
