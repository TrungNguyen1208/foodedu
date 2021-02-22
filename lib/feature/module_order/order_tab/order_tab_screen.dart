import 'package:flutter/material.dart';
import 'package:foodedu/commom/tabbar/circle_tab_indicator.dart';
import 'package:foodedu/general/constant/app_theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OrderTabScreen extends StatefulWidget {
  @override
  _OrderTabScreenState createState() => _OrderTabScreenState();
}

class _OrderTabScreenState extends State<OrderTabScreen> {

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final tabTextSize =  ScreenUtil().setSp(15.0);

    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.white,
          elevation: 1,
          flexibleSpace: SafeArea(
            child: TabBar(
              labelColor: AppColor.darkGrayHighlighted,
              unselectedLabelColor: AppColor.lightGray,
              labelStyle: textTheme.bodyText2.copyWith(fontWeight: FontWeight.w600, fontSize: tabTextSize),
              indicator: CircleTabIndicator(color: AppColor.primary, radius: 4),
              tabs: const <Tab>[
                Tab(text: 'Ongoing'),
                Tab(text: 'Upcoming'),
                Tab(text: 'History'),
                Tab(text: 'Bag'),
              ],
            ),
          ),
        ),
        body: TabBarView(
          children: [
            Container(),
            Container(),
            Container(),
            Container(),
          ],
        ),
      ),
    );
  }
}
