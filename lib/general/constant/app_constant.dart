class AppMargin {
  static const double smaller = 2.0;
  static const double small = 4.0;
  static const double slightlySmall = 6.0;
  static const double normal = 8.0;
  static const double slightlyBig = 12.0;
  static const double big = 16.0;
  static const double litterBig = 24.0;
  static const double bigger = 32.0;
  static const double biggest = 64.0;

  static const double paddingContentHoz = 24.0;

  // See: https://developer.apple.com/design/human-interface-guidelines/ios/visual-design/adaptivity-and-layout
  static const double minimumTappableMargin = 44.0;
  static const double mediumTappableMargin = 66.0;
  static const double bigTappableMargin = 88.0;
}

class AppRegex {
  static const String emailAddressFormat =
      // ignore: use_raw_strings
      '^([A-Z0-9a-z][._+-]{0,1})+[A-Z0-9a-z]+@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})';
  static const String lowercase = '[a-z]';
  static const String uppercase = '[A-Z]';
  static const String numeric = '[0-9]';

  // ignore: use_raw_strings
  static const String passwordSymbols = '#?!@\$%^&*-';
  static const String passwordInvalidCharacter =
      '[^A-Za-z0-9' + passwordSymbols + ']';
  static const String phoneNumberInvalidCharacter = '[^0-9]';
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
