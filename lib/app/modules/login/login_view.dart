import 'package:flutter/material.dart';
import 'package:flutter_login/flutter_login.dart';
import 'package:get/get.dart';
import 'package:logger/logger.dart';

import '../../routes/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          child: Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/bg.jpg"),
              fit: BoxFit.cover,
            )),
            child: FlutterLogin(
              //  title: 'General Maintanance Service',
              logo: 'assets/images/app_icon.jpg',
              // background: backgroundImage,
              onLogin: (s) => Get.toNamed(Routes.HOME),
              onSignup: (s) => Get.toNamed(Routes.HOME),
              theme: MyTheme.myLoginTheme,
              additionalSignupFields: const [
                UserFormField(
                    keyName: 'user name', userType: LoginUserType.name),
                UserFormField(
                  keyName: 'phone',
                  displayName: 'Phone',
                  icon: Icon(Icons.phone),
                  userType: LoginUserType.phone,
                ),
                UserFormField(keyName: 'wilaya', userType: LoginUserType.text)
              ],
              onSubmitAnimationCompleted: () {
                /* Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: (context) => const DashboardScreen(),
                ));*/
                Logger().i("OK");
                Get.toNamed(Routes.HOME);
              },

              onRecoverPassword: (s) => Get.toNamed(Routes.HOME),
              children: const [
                Positioned(
                  top: 0,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 25,
                        width: 5000,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

abstract class MyTheme {
  static LoginTheme myLoginTheme = LoginTheme(
    logoWidth: 0.4,
    cardTopPosition: Get.width / 1.5,
    pageColorLight: Get.theme.primaryColor.withOpacity(0),
    pageColorDark: Get.theme.colorScheme.secondary.withOpacity(0),
    //    cardInitialHeight: Get.height * 0.7,
    cardTheme: const CardTheme(
      color: Colors.white,
      surfaceTintColor: Colors.white,
      elevation: 0,
    ),
    primaryColor: Get.theme.primaryColor,
    buttonTheme: LoginButtonTheme(
      backgroundColor: Get.theme.primaryColor,
      highlightColor: Get.theme.primaryColor,
      splashColor: Colors.white,
    ),
    textFieldStyle: const TextStyle(color: Colors.white),
    accentColor: Colors.white,
    // inputTheme: InputDecorationTheme(),
    footerBackgroundColor: Colors.white,
    titleStyle: const TextStyle(
        color: Colors.white, fontSize: 20, fontWeight: FontWeight.w700),
  );
}
