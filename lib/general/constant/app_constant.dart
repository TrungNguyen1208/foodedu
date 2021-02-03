import 'package:flutter/material.dart';

class AppDimen {
  static const double normalHozPadding = 24.0;
}

class AppRegex {
  static const String emailAddressFormat =
      "^([A-Z0-9a-z][._+-]{0,1})+[A-Z0-9a-z]+@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})";
  static const String lowercase = "[a-z]";
  static const String uppercase = "[A-Z]";
  static const String numeric = "[0-9]";

  static const String passwordSymbols = "#?!@\$%^&*-";
  static const String passwordInvalidCharacter =
      "[^A-Za-z0-9" + passwordSymbols + "]";
  static const String phoneNumberInvalidCharacter = "[^0-9]";
}

class LimitText {
  static const int passwordMinLength = 6;
  static const int passwordMaxLength = 32;
  static const int emailAddressMaxLength = 320;
  static const int phoneNumberMaxLength = 20;
  static const int searchKeywordMaxLength = 128;
  static const int emailAddressVerificationCodeLength = 6;
  static const int phoneNumberVerificationCodeLength = 6;
}