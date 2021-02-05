import 'package:flutter/material.dart';
import 'package:foodedu/feature/widget/authen/right_link_text.dart';
import 'package:foodedu/feature/widget/authen/social_login_button.dart';
import 'package:foodedu/feature/widget/common/primary_button.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  FocusNode _focusEmail, _focusPassword;

  @override
  void initState() {
    super.initState();
    _focusEmail = FocusNode();
    _focusPassword = FocusNode();
    _focusEmail.addListener(_onFocusNodeEvent);
    _focusPassword.addListener(_onFocusNodeEvent);
  }

  @override
  void dispose() {
    super.dispose();
    _focusEmail.dispose();
    _focusPassword.dispose();
  }

  void _onFocusNodeEvent() {
    // setState(() {
    //   // Re-renders
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          scrollDirection: Axis.vertical,
          padding: const EdgeInsets.symmetric(
              horizontal: AppMargin.paddingContentHoz, vertical: 50.0),
          children: <Widget>[
            Text(
              'Sign In',
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: AppColor.darkGrayHighlighted),
              maxLines: 1,
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: AppMargin.big),
            const RightLinkText(
              textLeft: 'Don’t have an account?',
              textRight: 'Sign up now!',
            ),
            const SizedBox(height: AppMargin.bigger),
            _buildInputField(),
            const SizedBox(height: AppMargin.big),
            Text(
              'Forgot Password?',
              style: Theme.of(context)
                  .textTheme
                  .bodyText2
                  .copyWith(color: AppColor.darkGrayHighlighted),
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppMargin.litterBig),
            const PrimaryButton(text: 'Sign In'),
            const SizedBox(height: AppMargin.litterBig),
            Text(
              'OR',
              style: Theme.of(context).textTheme.subtitle1.copyWith(
                  color: AppColor.lightBlueGray, fontWeight: FontWeight.w500),
              maxLines: 1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppMargin.litterBig),
            const SocialLoginButton(
              title: 'Continue with facebook',
              image: 'assets/images/facebook.png',
            ),
            const SizedBox(height: AppMargin.big),
            const SocialLoginButton(
              title: 'Continue with google',
              image: 'assets/images/google.png',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInputField() {
    return Column(children: <Widget>[
      TextField(
        focusNode: _focusEmail,
        maxLines: 1,
        textInputAction: TextInputAction.next,
        keyboardAppearance: Brightness.light,
        keyboardType: TextInputType.emailAddress,
        maxLength: LimitText.emailAddressMaxLength,
        style: Theme.of(context).textTheme.bodyText1.copyWith(color: AppColor.darkGrayHighlighted),
        cursorColor: AppColor.darkGrayHighlighted,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(color: AppColor.borderTextField, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(color: AppColor.borderTextField, width: 1),
          ),
          counterText: '',
          labelText: 'Email',
          labelStyle: Theme.of(context).textTheme.bodyText1.copyWith(color: AppColor.darkGrayHighlighted),
        ),
      ),
      const SizedBox(height: 20),
      TextField(
        focusNode: _focusPassword,
        maxLines: 1,
        obscureText: true,
        textInputAction: TextInputAction.done,
        keyboardAppearance: Brightness.light,
        keyboardType: TextInputType.visiblePassword,
        maxLength: LimitText.passwordMaxLength,
        style: Theme.of(context).textTheme.bodyText1.copyWith(color: AppColor.darkGrayHighlighted),
        cursorColor: AppColor.darkGrayHighlighted,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(color: AppColor.borderTextField, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(color: AppColor.borderTextField, width: 1),
          ),
          counterText: '',
          labelText: 'Password',
          labelStyle: Theme.of(context).textTheme.bodyText1.copyWith(color: AppColor.darkGrayHighlighted),
        ),
      ),
    ]);
  }
}
