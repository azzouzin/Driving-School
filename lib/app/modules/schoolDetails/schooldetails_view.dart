import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/school_model.dart';

import '../../components/custom_button.dart';
import './schooldetails_controller.dart';

class SchoolDetailsView extends GetView<SchoolDetailsController> {
  SchoolDetailsView({super.key, required this.schoolModel});
  final SchoolModel schoolModel;
  CarouselController _controller = CarouselController();
  Widget build(BuildContext context) {
    final theme = context.theme;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: Get.height - 30.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(30.r),
                        bottomRight: Radius.circular(30.r),
                      ),
                      child: CarouselSlider.builder(
                        carouselController: _controller,
                        options: CarouselOptions(
                          height: 450.h,
                        ),
                        itemCount: 1,
                        itemBuilder: (BuildContext context, int itemIndex,
                                int pageViewIndex) =>
                            SizedBox(
                          height: 450.h,
                          width: Get.width,
                          child: Image.asset(
                            schoolModel.image,
                            //height: 700.h,
                            fit: BoxFit.cover,
                          ).animate().slideX(
                                duration: const Duration(milliseconds: 300),
                                begin: 1,
                                curve: Curves.easeInSine,
                              ),
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30.h,
                      // left: 20.w,
                      right: 20.w,
                      // ignore: prefer_const_constructors
                      child: InkWell(
                        onTap: () => Get.back(),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 225.h,
                      left: 10.w,
                      right: 10.w,
                      child: SizedBox(
                        width: Get.width,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              //     onTap: () => _controller.previousPage(),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.white,
                              ),
                            ),
                            InkWell(
                              //   onTap: () => _controller.nextPage(),
                              child: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                20.verticalSpace,
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Text(
                          schoolModel.name,
                          style: theme.textTheme.bodyLarge,
                        ).animate().fade().slideX(
                              duration: const Duration(milliseconds: 300),
                              begin: -1,
                              curve: Curves.easeInSine,
                            ),
                      ),
                      Text(schoolModel.phone,
                              style: theme.textTheme.bodyLarge!
                                  .copyWith(fontWeight: FontWeight.w300))
                          .animate()
                          .fade()
                          .slideX(
                            duration: const Duration(milliseconds: 300),
                            begin: -1,
                            curve: Curves.easeInSine,
                          ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(schoolModel.description,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.w300))
                      .animate()
                      .fade()
                      .slideX(
                        duration: const Duration(milliseconds: 300),
                        begin: -1,
                        curve: Curves.easeInSine,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("العنوان: ${schoolModel.address}",
                          style: theme.textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.w300))
                      .animate()
                      .fade()
                      .slideX(
                        duration: const Duration(milliseconds: 300),
                        begin: -1,
                        curve: Curves.easeInSine,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("الهاتف:  ${schoolModel.phone}",
                          style: theme.textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.w300))
                      .animate()
                      .fade()
                      .slideX(
                        duration: const Duration(milliseconds: 300),
                        begin: -1,
                        curve: Curves.easeInSine,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("البريد الالكتروني:  ${schoolModel.email}",
                          style: theme.textTheme.bodyMedium!
                              .copyWith(fontWeight: FontWeight.w300))
                      .animate()
                      .fade()
                      .slideX(
                        duration: const Duration(milliseconds: 300),
                        begin: -1,
                        curve: Curves.easeInSine,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Text("التقييم:",
                              style: theme.textTheme.bodyMedium!
                                  .copyWith(fontWeight: FontWeight.w300))
                          .animate()
                          .fade()
                          .slideX(
                            duration: const Duration(milliseconds: 300),
                            begin: -1,
                            curve: Curves.easeInSine,
                          ),
                      10.horizontalSpace,
                      RatingBar.builder(
                        initialRating: 3,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemSize: 16.w,
                        itemCount: 5,
                        itemPadding:
                            const EdgeInsets.symmetric(horizontal: 4.0),
                        itemBuilder: (context, _) => const Icon(
                          Icons.heart_broken,
                          color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                    ],
                  ),
                ),
                20.verticalSpace,
                Center(
                  child: CustomButton(
                    child: const Text(
                      "التسجيل الان",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {},
                    width: 200.w,
                    high: 50.h,
                    borderRadius: 30.r,
                  ).animate().fade().slideY(
                        duration: const Duration(milliseconds: 300),
                        begin: 1,
                        curve: Curves.easeInSine,
                      ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
