import 'package:flutter/material.dart';
import 'app_theme.dart';

class AppThemeText {
  static const textTheme = TextTheme(
    headline3: AppStylesText.headline3,
    headline4: AppStylesText.headline4,
    headline5: AppStylesText.headline5,
    headline6: AppStylesText.headline6,
    subtitle1: AppStylesText.subtitle1,
    bodyText1: AppStylesText.bodyText1,
    bodyText2: AppStylesText.bodyText2,
    caption: AppStylesText.caption,
  );

  static const appBarTextTheme = TextTheme(
    headline6: AppStylesText.headline6,
  );

  static const primaryTextTheme = TextTheme(
    bodyText1: AppStylesText.bodyText1,
  );
}

class AppStylesText {
  static const headline3 = TextStyle(
    fontSize: 40.0,
    fontWeight: FontWeight.w500,
    fontFamily: AppFont.aveNextLT,
    color: AppColor.defaultText,
  );

  static const headline4 = TextStyle(
    fontSize: 27.0,
    fontWeight: FontWeight.w600,
    fontFamily: AppFont.aveNextLT,
    color: AppColor.defaultText,
  );

  static const headline5 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    fontFamily: AppFont.aveNextLT,
    color: AppColor.defaultText,
  );

  static const headline6 = TextStyle(
    fontSize: 20.0,
    fontWeight: FontWeight.w600,
    fontFamily: AppFont.aveNextLT,
    color: AppColor.defaultText,
  );

  static const subtitle1 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    fontFamily: AppFont.aveNextLT,
    color: AppColor.darkGrayHighlighted,
  );

  static const bodyText1 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w400,
    fontFamily: AppFont.aveNextLT,
    color: AppColor.defaultText,
  );

  static const bodyText2 = TextStyle(
    fontSize: 15.0,
    fontWeight: FontWeight.w500,
    fontFamily: AppFont.aveNextLT,
    color: AppColor.defaultText,
  );

  static const caption = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    fontFamily: AppFont.aveNextLT,
    color: AppColor.gray,
  );
}

class AppFont {
  static const String aveNextLT = 'AvenirNextLTPro';
}
