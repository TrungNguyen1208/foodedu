import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // primarySwatch: AppColor.primary,
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    textTheme: const TextTheme(
        headline3: TextStyle(fontSize: 40.0, fontWeight: FontWeight.w500, fontFamily: AppFont.aveNextLT, color: AppColor.defaultText),
        headline4: TextStyle(fontSize: 27.0, fontWeight: FontWeight.w600, fontFamily: AppFont.aveNextLT, color: AppColor.defaultText),
        headline5: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w600, fontFamily: AppFont.aveNextLT, color: AppColor.defaultText),
        headline6: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, fontFamily: AppFont.aveNextLT, color: AppColor.defaultText),
        subtitle1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, fontFamily: AppFont.aveNextLT, color: AppColor.defaultText),
        bodyText1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, fontFamily: AppFont.aveNextLT, color: AppColor.defaultText),
        bodyText2: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, fontFamily: AppFont.aveNextLT, color: AppColor.defaultText),
        caption: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w500, fontFamily: AppFont.aveNextLT, color: AppColor.defaultText),
    ),
  );
}

class AppFont {
  static const String aveNextLT = 'AvenirNextLTPro';
}

class AppColor {
  static const Color primary = Color(0xffFB6D3B);
  static const Color orange = Color(0xffFC9631);
  static const Color primaryLight = Color(0xffFFF1E5);

  static const Color darkGrayHighlighted = Color(0xff4F585E);
  static const Color lightBlueGray = Color(0xff697586);
  static const Color gray = Color(0xff9B9B9B);
  static const Color lightGray = Color(0xffc3c3c3);
  static const Color offWhite = Color(0xffF6F6F6);
  static const Color white = Colors.white;
  static const Color line = Color(0xffEDEDED);

  static const Color green = Color(0xff3ABC5E);
  static const Color red = Color(0xffF43E3E);
  static const Color blue = Color(0xff4B8EDD);

  static const Color facebook = Color(0xff4460A0);
  static const Color google = Color(0xff4285F4);

  static const Color defaultText = Color(0xff4F585E);
  static const Color borderTextField = Color(0xffa7aaab);

  static const Color bgNavBar = Color(0xffFEF0EB);
}