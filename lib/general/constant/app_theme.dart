import 'package:flutter/material.dart';

import 'app_theme_text.dart';

class AppTheme {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    // primarySwatch: AppColor.primary,
    primaryColor: AppColor.primary,
    scaffoldBackgroundColor: Colors.white,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryTextTheme: AppThemeText.primaryTextTheme,
    textTheme: AppThemeText.textTheme,
    appBarTheme: const AppBarTheme(
      color: AppColor.white,
      elevation: 1,
      centerTitle: true,
      textTheme: AppThemeText.appBarTextTheme,
      iconTheme: IconThemeData(color: AppColor.darkGrayHighlighted),
    ),
  );
}

class AppShadow {
  static const BoxShadow restaurantCard = BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.1),
      offset: Offset(0, 2),
      blurRadius: 18);
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
  static const Color borderSearch = Color(0xffDBDFE3);

  static const Color bgNavBar = Color(0xffFEF0EB);
  static const Color categoryText = Color(0xff283743);
}
