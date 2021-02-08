import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:foodedu/commom/button/primary_button.dart';
import 'package:foodedu/commom/container/social_login_container.dart';
import 'package:foodedu/commom/text/right_link_text.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {

  FocusNode _focusEmail, _focusPassword, _focusConfirmPass;

  @override
  void initState() {
    super.initState();
    _focusEmail = FocusNode();
    _focusPassword = FocusNode();
    _focusConfirmPass = FocusNode();
    _focusEmail.addListener(_onFocusNodeEvent);
    _focusPassword.addListener(_onFocusNodeEvent);
    _focusConfirmPass.addListener(_onFocusNodeEvent);
  }

  @override
  void dispose() {
    super.dispose();
    _focusEmail.dispose();
    _focusPassword.dispose();
    _focusConfirmPass.dispose();
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
              'Sign Up',
              style: Theme.of(context)
                  .textTheme
                  .headline3
                  .copyWith(color: AppColor.darkGrayHighlighted),
              maxLines: 1,
              textAlign: TextAlign.left,
            ),
            const SizedBox(height: AppMargin.big),
            RightLinkText(
              textLeft: 'Enter your Email and new Password for sign up, or',
              textRight: 'Already have account?',
              onPressedLink: (){},
            ),
            const SizedBox(height: AppMargin.bigger),
            _buildInputField(),
            const SizedBox(height: AppMargin.litterBigger),
            const PrimaryButton(text: 'SIGN UP'),
            const SizedBox(height: AppMargin.big),
            _buildTermAndPolicyLabel(),
            const SizedBox(height: AppMargin.litterBigger),
            SocialLoginContainer(),
          ],
        ),
      ),
    );
  }

  Widget _buildTermAndPolicyLabel() {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(children: <TextSpan>[
        TextSpan(
            text: 'By signing up you agree to our',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: AppColor.lightBlueGray)),
        const TextSpan(text: ' '),
        TextSpan(
          text: 'Terms\n Condition',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: AppColor.primary),
          recognizer: TapGestureRecognizer()..onTap = _onPressTerms,
        ),
        TextSpan(
            text: ' & ',
            style: Theme.of(context)
                .textTheme
                .bodyText2
                .copyWith(color: AppColor.lightBlueGray)),
        TextSpan(
          text: 'Privacy Policy',
          style: Theme.of(context)
              .textTheme
              .bodyText2
              .copyWith(color: AppColor.primary),
          recognizer: TapGestureRecognizer()..onTap = _onPressPolicy,
        ),
      ]),
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
        style: Theme.of(context)
            .textTheme
            .bodyText1
            .copyWith(color: AppColor.darkGrayHighlighted),
        cursorColor: AppColor.darkGrayHighlighted,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide:
            const BorderSide(color: AppColor.borderTextField, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide:
            const BorderSide(color: AppColor.borderTextField, width: 1),
          ),
          counterText: '',
          labelText: 'Email',
          labelStyle: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: AppColor.darkGrayHighlighted),
        ),
      ),
      const SizedBox(height: 16),
      TextField(
        focusNode: _focusPassword,
        maxLines: 1,
        obscureText: true,
        textInputAction: TextInputAction.done,
        keyboardAppearance: Brightness.light,
        keyboardType: TextInputType.visiblePassword,
        maxLength: LimitText.passwordMaxLength,
        style: Theme.of(context)
            .textTheme
            .bodyText1
            .copyWith(color: AppColor.darkGrayHighlighted),
        cursorColor: AppColor.darkGrayHighlighted,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide:
            const BorderSide(color: AppColor.borderTextField, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide:
            const BorderSide(color: AppColor.borderTextField, width: 1),
          ),
          counterText: '',
          labelText: 'Password',
          labelStyle: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: AppColor.darkGrayHighlighted),
        ),
      ),
      const SizedBox(height: 16),
      TextField(
        focusNode: _focusConfirmPass,
        maxLines: 1,
        obscureText: true,
        textInputAction: TextInputAction.done,
        keyboardAppearance: Brightness.light,
        keyboardType: TextInputType.visiblePassword,
        maxLength: LimitText.passwordMaxLength,
        style: Theme.of(context)
            .textTheme
            .bodyText1
            .copyWith(color: AppColor.darkGrayHighlighted),
        cursorColor: AppColor.darkGrayHighlighted,
        decoration: InputDecoration(
          alignLabelWithHint: true,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide:
            const BorderSide(color: AppColor.borderTextField, width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide:
            const BorderSide(color: AppColor.borderTextField, width: 1),
          ),
          counterText: '',
          labelText: 'Confirm Password',
          labelStyle: Theme.of(context)
              .textTheme
              .bodyText1
              .copyWith(color: AppColor.darkGrayHighlighted),
        ),
      ),
    ]);
  }

  void _onPressTerms() {

  }

  void _onPressPolicy() {

  }
}
