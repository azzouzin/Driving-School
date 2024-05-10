import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/components/custom_snackbar.dart';

import './test_controller.dart';

class TestView extends GetView<TestController> {
  TestView({super.key});
  final List<String> questions = [
    "1 الى ماذا تشير الصورة في الاسفل",
    "2 الى ماذا تشير الصورة في الاسفل",
    "3 الى ماذا تشير الصورة في الاسفل",
    "4 الى ماذا تشير الصورة في الاسفل",
    "5 الى ماذا تشير الصورة في الاسفل",
    "6 الى ماذا تشير الصورة في الاسفل",
    "7 الى ماذا تشير الصورة في الاسفل",
    "8 الى ماذا تشير الصورة في الاسفل",
    "ماهي الاجابة الصحيحة9 ",
    "ماهي الاجابة الصحيحة10 ",
    "ماهي الاجابة الصحيحة11 ",
    "ماهي الاجابة الصحيحة12 ",
    "ماهي الاجابة الصحيحة13 ",
    "ماهي الاجابة الصحيحة14 ",
    "ماهي الاجابة  الصحيحة 15 ",
    "ماهي الاجابة الصحيحة 16  ",
    "ماهي الاجابة الصحيحة 17  ",
    "متى يمنع الدوران الى اليسار ",
    "متى يمنع القيام بنصف دورة",
    "متى تكون الأولوية الى اليمين ",
    "ماهي انظمة الأولوية ",
    "ماهو الصنف الممتحن فيه ",
    "ماحي حالات الوقوف والتوقف",
    "ماهي انواع الخطوط المتقاطعة ",
    "أين يوجد الضوء الاصفر الغماز ",
    "ماهي مسافة الامان ؟ ماهي مسافة الإلتصاق ؟ ومسافة الكبح ؟ ",
    "ماهي الاخطار المتعلقة بالسياقة عند المطر الغزير",
    "ماهي لوجه للتشابه بين الطريق السيار و السريع ",
    "ماهو دور مختلف اضواء المركبات دات المحرك ؟ اذكرهم ؟",
    "ماهي المناورات الممنوعة في الطريق السيار و السريع ؟",
  ];
  List<int> photos = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  final List<TextEditingController> controllers = [
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
    TextEditingController(),
  ];
  CarouselController carouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("اختبار رخصة السياقة"), actions: [
        CircleAvatar(
          child: SizedBox(
            width: 50,
            height: 50,
            child: ClipOval(child: Image.asset("assets/images/app_icon.jpg")),
          ),
        ),
        Gap(10),
      ]),
      body: Expanded(
        child: CarouselSlider(
          items: questions
              .map(
                (e) => SingleChildScrollView(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const Gap(100),
                        Row(
                          children: [
                            Text(
                              "السؤال رقم ${questions.indexOf(e) + 1} :",
                              style: Get.theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                        const Gap(10),
                        Text(
                          e,
                          style: Get.theme.textTheme.labelLarge,
                        ),
                        questions.indexOf(e) < 17
                            ? Image.asset(
                                "assets/images/${questions.indexOf(e) + 1}.jpg")
                            : Container(),
                        const Gap(10),

                        Row(
                          children: [
                            Text(
                              "الاجابة رقم ${questions.indexOf(e) + 1} :",
                              style: Get.theme.textTheme.labelLarge,
                            ),
                          ],
                        ),
                        const Gap(10),
                        SizedBox(
                          height: Get.height * 0.3,
                          child: TextFormField(
                            maxLines: 30,
                            decoration: InputDecoration(
                              hintText: "اكتب الاجابة هنا ",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    color: Colors.blue, width: 1),
                              ),
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(12),
                                borderSide: const BorderSide(
                                    color: Colors.blue, width: 1),
                              ),
                            ),
                          ),
                        ),
                        //     const Gap(100),
                        const Gap(16),
                        Row(
                          children: [
                            ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(60),
                                  ),
                                  backgroundColor: Colors.green,
                                ),
                                onPressed: () {
                                  carouselController.nextPage();
                                },
                                child: const Text(
                                  "التالي",
                                  style: TextStyle(color: Colors.white),
                                )),
                            const Spacer(),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(60),
                                ),
                              ),
                              onPressed: () {
                                carouselController.previousPage();
                              },
                              child: const Text(
                                "السابق",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        ),
                        Gap(16.h),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(60),
                              ),
                              fixedSize: Size(300.w, 50)),
                          onPressed: () {
                            Get.back();
                            CustomSnackBar.showCustomSnackBar(
                                title: "تم تسجيل الاختبار بنجاح",
                                message:
                                    " سيتم عرض النتيجة عند تقييم الاختبار من طرف المدرسة");
                          },
                          child: const Text(
                            "انهاء الاختبار",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                        Gap(16.h),
                      ]),
                ),
              )
              .toList(),
          carouselController: carouselController,
          options: CarouselOptions(
            height: Get.height,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: false,
            reverse: false,
            autoPlay: false,
            autoPlayInterval: const Duration(seconds: 3),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            enlargeFactor: 0.3,
            scrollDirection: Axis.horizontal,
          ),
        ),
      ),
    );
  }
}
