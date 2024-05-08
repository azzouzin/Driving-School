import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/modules/school/school_view.dart';
import '../../components/custom_app_bar.dart';
import '../../components/custom_text_field.dart';
import '../../components/school_card.dart';
import '../../data/local/dummy_data.dart';
import 'home_controller.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
          child: currentIndex == 1
              ? SchoolView()
              : Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        bottomNavigationBar: BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.person), label: "قسم التلاميذ"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.no_flash), label: "المدرسة"),
            ],
            currentIndex: currentIndex,
            onTap: (i) => setState(() {
                  currentIndex = i;
                })));
  }
}
