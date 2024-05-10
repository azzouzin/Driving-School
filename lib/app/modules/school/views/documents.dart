import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DocumentsPage extends StatelessWidget {
  const DocumentsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ListView.builder(
          itemBuilder: (context, index) =>
              Image.asset("assets/images/df${index + 1}.jpeg"),
          itemCount: 6,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "دفتر الشروط  و العقود",
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
              _onCustomAnimationAlertPressed(context);
            },
            child: const Text(
              "التوقيع على العقد",
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ],
    );
  }

  Widget fadeAlertAnimation(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
    Widget child,
  ) {
    return Align(
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }

  //Custom animation alert
  _onCustomAnimationAlertPressed(context) {
    Alert(
        context: context,
        title: "هل تريد التوقيع على العقد؟",
        desc: "عن ظغطك موافق انت تؤكد على الموافقة على دفتر الشروط ",
        alertAnimation: fadeAlertAnimation,
        buttons: [
          DialogButton(
            color: Colors.green,
            child: const Text(
              "موافق",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            onPressed: () => Get.back(),
          )
        ]).show();
  }
}
