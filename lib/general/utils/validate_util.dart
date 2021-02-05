import 'package:foodedu/general/constant/app_constant.dart';

/*
  return String is error message
  return null is validate success
 */
class ValidateUtil {

  static String validateEmailAddress(String emailAddress) {
    if (emailAddress == null || emailAddress.trim().isEmpty) {
      return 'Please input your email address.';
    }
    if (emailAddress.length > LimitText.emailAddressMaxLength) {
      return 'Email address must not exceed ${LimitText.emailAddressMaxLength} characters.';
    }
    if (!emailAddress.isValidEmail()) {
      return 'Incorrect email address format. Please check your input.';
    }
    return null;
  }

  static String validateRegisterPassword(String password) {
    if (password == null || password.isEmpty) {
      return 'Please input your password.';
    }
    if (password.length < LimitText.passwordMinLength) {
      return 'Password must be at least ${LimitText.passwordMinLength} characters.';
    }
    if (password.length > LimitText.passwordMaxLength) {
      return 'Password must be at most ${LimitText.passwordMaxLength} characters.';
    }
    if (password.isContainInvalidCharacter()) {
      return 'Password contains invalid character. Only alphabets, numbers, and symbols are allowed.';
    }
    if (!password.isContainLowercase()) {
      return 'Password must contain at least 1 lowercase character.';
    }
    if (!password.isContainUppercase()) {
      return 'Password must contain at least 1 lowercase character.';
    }
    if (!password.isContainNumber()) {
      return 'Password must contain at least 1 numeric character.';
    }
    return null;
  }

  static String validateEmptyPassword(String password) {
    if (password == null || password.isEmpty) {
      return 'Please input your password.';
    }
    return null;
  }

  static String validatePhoneNumber(String phoneNumber) {
    if (phoneNumber == null || phoneNumber.trim().isEmpty) {
      return 'Please input your phone number.';
    }
    if (phoneNumber.length > LimitText.phoneNumberMaxLength) {
      return 'Phone number must not exceed ${LimitText.phoneNumberMaxLength} digits.';
    }
    if (phoneNumber.isContainPhoneNumberInvalidCharacter()) {
      return 'Phone number contains invalid character. Only numbers are allowed.';
    }
    return null;
  }

  static String validateSearchKeyword(String keyword) {
    if (keyword.length > LimitText.searchKeywordMaxLength) {
      return 'Search keyword must not exceed ${LimitText.searchKeywordMaxLength} characters.';
    }
    return null;
  }
}

extension EmailValidator on String {
  bool isValidEmail() {
    return RegExp(AppRegex.emailAddressFormat)
        .hasMatch(this);
  }

  bool isContainInvalidCharacter() {
    return RegExp(AppRegex.passwordInvalidCharacter)
        .hasMatch(this);
  }

  bool isContainLowercase() {
    return RegExp(AppRegex.lowercase)
        .hasMatch(this);
  }

  bool isContainUppercase() {
    return RegExp(AppRegex.uppercase)
        .hasMatch(this);
  }

  bool isContainNumber() {
    return RegExp(AppRegex.numeric)
        .hasMatch(this);
  }

  bool isContainPhoneNumberInvalidCharacter() {
    return RegExp(AppRegex.phoneNumberInvalidCharacter)
        .hasMatch(this);
  }
}