import 'package:flutter/material.dart';
import 'package:foodedu/commom/button/social_login_button.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class SocialLoginContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'OR',
          style: Theme.of(context).textTheme.subtitle1.copyWith(
              color: AppColor.lightBlueGray, fontWeight: FontWeight.w500),
          maxLines: 1,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: AppMargin.litterBigger),
        const SocialButton(
          title: 'Continue with facebook',
          image: 'assets/images/facebook.png',
          color: AppColor.facebook,
        ),
        const SizedBox(height: AppMargin.big),
        const SocialButton(
          title: 'Continue with google',
          image: 'assets/images/google.png',
          color: AppColor.google,
        )
      ],
    );
  }
}
