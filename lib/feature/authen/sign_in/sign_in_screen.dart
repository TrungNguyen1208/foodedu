import 'package:flutter/material.dart';
import 'package:foodedu/commom/container/social_login_container.dart';
import 'package:foodedu/commom/text/right_link_text.dart';
import 'package:foodedu/commom/button/primary_button.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_theme.dart';
import 'package:foodedu/routues/routue_name.dart';

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
            RightLinkText(
              textLeft: 'Don’t have an account?',
              textRight: 'Sign up now!',
              onPressedLink: _onPressSignUp,
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
            const SizedBox(height: AppMargin.litterBigger),
            const PrimaryButton(text: 'SIGN IN'),
            const SizedBox(height: AppMargin.litterBigger),
            SocialLoginContainer(),
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
      const SizedBox(height: 20),
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
    ]);
  }

  void _onPressSignUp() {
    Navigator.pushNamed(context, RouteName.signUpPage);
  }
}
