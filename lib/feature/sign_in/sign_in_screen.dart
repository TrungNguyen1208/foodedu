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
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: AppColor.lightBlueGray, fontWeight: FontWeight.w500),
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
}
