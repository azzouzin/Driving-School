import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';

import './test_controller.dart';

class TestView extends GetView<TestController> {
  TestView({super.key});
  final List<String> questions = [
    "  متى يمنع الدوران الى اليسار ",
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
          child: ClipOval(child: Image.asset("assets/images/person1.png")),
        ),
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
                        const Gap(100),
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
                        Row(
                          children: [
                            ElevatedButton(
                                onPressed: () {
                                  carouselController.nextPage();
                                },
                                child: const Text(
                                  "التالي",
                                  style: TextStyle(color: Colors.white),
                                )),
                            const Spacer(),
                            ElevatedButton(
                                onPressed: () {
                                  carouselController.previousPage();
                                },
                                child: const Text(
                                  "السابق",
                                  style: TextStyle(color: Colors.white),
                                )),
                          ],
                        ),
                            ElevatedButton(
                                onPressed: () {
                                  carouselController.previousPage();
                                },
                                child: const Text(
                                  "السابق",
                                  style: TextStyle(color: Colors.white),
                                )),
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
