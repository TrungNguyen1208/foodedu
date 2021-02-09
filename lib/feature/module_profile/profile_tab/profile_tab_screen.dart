import 'package:flutter/material.dart';
import 'package:foodedu/commom/button/list_title_button.dart';
import 'package:foodedu/commom/container/profile_header_view.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_image_path.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class ProfileTabScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        top: false,
        child: Container(
          color: const Color(0xffEFF0F3),
          child: Column(
            children: <Widget>[
              ProfileHeaderView(),
              _buildContentView(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContentView() {
    return Expanded(
      child: ListView(
        padding: const EdgeInsets.symmetric(
            vertical: AppMargin.big, horizontal: 0),
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
        children: const <Widget>[
          ListTitleButton(
            title: 'My voucher',
            image: AppImagePath.iconVoucher,
          ),
          SizedBox(
            height: 1,
            width: double.infinity,
            child: ColoredBox(color: AppColor.line),
          ),
          ListTitleButton(
            title: 'Payment methods',
            image: AppImagePath.iconCreditCard,
          ),
          SizedBox(
            height: 1,
            width: double.infinity,
            child: ColoredBox(color: AppColor.line),
          ),
          ListTitleButton(
            title: 'Profile & Address',
            image: AppImagePath.iconUser,
          ),
          SizedBox(height: AppMargin.slightlyBig),
          ListTitleButton(
            title: 'Help Center',
            image: AppImagePath.iconSupport,
          ),
          SizedBox(
            height: 1,
            width: double.infinity,
            child: ColoredBox(color: AppColor.line),
          ),
          ListTitleButton(
            title: 'About us',
            image: AppImagePath.iconInfo,
          ),
          SizedBox(height: AppMargin.big),
          ListTitleButton(
            title: 'Log Out',
            image: AppImagePath.logOut,
            textColor: AppColor.primary,
            iconColor: AppColor.primary,
            isShowArrow: false,
          ),
        ],
      ),
    );
  }
}
