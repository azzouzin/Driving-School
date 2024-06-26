import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../config/theme/light_theme_colors.dart';
import '../../config/theme/my_fonts.dart';

class CustomDrawer extends StatelessWidget {
  final AdvancedDrawerController controller;

  CustomDrawer({required this.controller});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: LightThemeColors.primaryColor,
        child: ListTileTheme(
          textColor: Colors.white,
          iconColor: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            //center
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //200
              SizedBox(
                height: 50.h,
              ),

              ListTile(
                onTap: () {},
                leading: SvgPicture.asset('assets/vectors/IC_Home.svg',
                    width: 24, height: 24, color: Colors.white),
                title: MyFonts.font15Weight400ColorWhite('الرئيسية'),
              ),
              ListTile(
                onTap: () {},
                leading: SvgPicture.asset('assets/vectors/IC_Profile.svg',
                    width: 24, height: 24, color: Colors.white),
                title: MyFonts.font15Weight400ColorWhite('الملف الشخصي'),
              ),
              ListTile(
                onTap: () {},
                leading: SvgPicture.asset('assets/vectors/IC_Location.svg',
                    width: 24, height: 24, color: Colors.white),
                title: MyFonts.font15Weight400ColorWhite('بقربي'),
              ),
              //white line divider Colors.white.withOpacity(0.5)
              Divider(
                color: Colors.white.withOpacity(0.5),
                thickness: 0.5,
                indent: 16,
                endIndent: 16,
              ),
              ListTile(
                onTap: () {},
                leading: SvgPicture.asset('assets/vectors/IC_Bookmark.svg',
                    width: 24, height: 24, color: Colors.white),
                title: MyFonts.font15Weight400ColorWhite('محفوظة'),
              ),
              ListTile(
                onTap: () {},
                leading: SvgPicture.asset('assets/vectors/IC_Notification.svg',
                    width: 24, height: 24, color: Colors.white),
                title: MyFonts.font15Weight400ColorWhite('الإشعارات'),
              ),
              ListTile(
                onTap: () {},
                leading: SvgPicture.asset('assets/vectors/IC_Message.svg',
                    width: 24, height: 24, color: Colors.white),
                title: MyFonts.font15Weight400ColorWhite('الرسائل'),
              ),
//white line divider Colors.white.withOpacity(0.5)
              Divider(
                color: Colors.white.withOpacity(0.5),
                thickness: 0.5,
                indent: 16,
                endIndent: 16,
              ),
              ListTile(
                onTap: () {},
                leading: SvgPicture.asset('assets/vectors/IC_Setting.svg',
                    width: 24, height: 24, color: Colors.white),
                title: MyFonts.font15Weight400ColorWhite('الإعدادات'),
              ),
              ListTile(
                onTap: () {},
                leading: SvgPicture.asset('assets/vectors/IC_Help.svg',
                    width: 24, height: 24, color: Colors.white),
                title: MyFonts.font15Weight400ColorWhite('اتصل بنا'),
              ),
              ListTile(
                onTap: () {},
                leading: SvgPicture.asset('assets/vectors/IC_Logout.svg',
                    width: 24, height: 24, color: Colors.white),
                title: MyFonts.font15Weight400ColorWhite('تسجيل الخروج'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
