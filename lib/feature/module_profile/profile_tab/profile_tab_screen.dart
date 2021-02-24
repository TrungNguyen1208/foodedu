import 'package:flutter/material.dart';
import 'package:foodedu/commom/button/list_title_button.dart';
import 'package:foodedu/commom/container/profile_header_view.dart';
import 'package:foodedu/general/constant/app_constant.dart';
import 'package:foodedu/general/constant/app_image_path.dart';
import 'package:foodedu/general/constant/app_theme.dart';
import 'package:foodedu/routues/routue_name.dart';

class ProfileTabScreen extends StatefulWidget {
  @override
  _ProfileTabScreenState createState() => _ProfileTabScreenState();
}

class _ProfileTabScreenState extends State<ProfileTabScreen> {
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
        children: <Widget>[
          const ListTitleButton(
            title: 'My voucher',
            image: AppImagePath.iconVoucher,
          ),
          _buildLineSpace(),
          const ListTitleButton(
            title: 'Payment methods',
            image: AppImagePath.iconCreditCard,
          ),
          _buildLineSpace(),
          ListTitleButton(
            title: 'Profile & Address',
            image: AppImagePath.iconUser,
            onPress: _goToProfileAddressScreen,
          ),
          const SizedBox(height: AppMargin.slightlyBig),
          const ListTitleButton(
            title: 'Help Center',
            image: AppImagePath.iconSupport,
          ),
          _buildLineSpace(),
          const ListTitleButton(
            title: 'About us',
            image: AppImagePath.iconInfo,
          ),
          const SizedBox(height: AppMargin.big),
          const ListTitleButton(
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

  Widget _buildLineSpace() {
    return const SizedBox(
      height: 1,
      width: double.infinity,
      child: ColoredBox(color: AppColor.line),
    );
  }

  void _goToProfileAddressScreen() {
    Navigator.pushNamed(context, RouteName.profileAddressPage);
  }
}
