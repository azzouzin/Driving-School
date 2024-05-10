import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:get/get.dart';
import 'package:getx_skeleton/app/data/models/school_model.dart';
import 'package:getx_skeleton/app/modules/schoolDetails/schooldetails_view.dart';
import 'package:getx_skeleton/app/routes/routes.dart';

class SchoolCard extends StatelessWidget {
  const SchoolCard({
    super.key,
    required this.schoolModel,
  });
  final SchoolModel schoolModel;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Get.to(SchoolDetailsView(schoolModel: schoolModel)),
      child: SizedBox(
        width: 170.w,
        //  color: Colors.amber,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Flexible(
              flex: 2,
              child: Container(
                width: 170.w,
                height: 130.h,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.r),
                  child: Image.asset(
                    "assets/images/dr1.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Gap(10.h),
            Text(
              schoolModel.name,
              style: Get.textTheme.labelMedium!
                  .copyWith(color: Colors.black, fontWeight: FontWeight.w600),
            ),
            Text(
              schoolModel.address,
              style: Get.textTheme.bodySmall,
            ),
            Row(
              children: [
                Text(
                  "التقييم: ",
                  style: Get.textTheme.bodySmall,
                ),
                const Spacer(),
                RatingBar.builder(
                  initialRating: schoolModel.rating,
                  minRating: 1,
                  direction: Axis.horizontal,
                  ignoreGestures: true,
                  allowHalfRating: true,
                  itemSize: 15.w,
                  itemCount: 5,
                  //  itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
