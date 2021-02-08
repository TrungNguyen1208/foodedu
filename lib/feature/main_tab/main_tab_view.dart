import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_theme.dart';

import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class MainTabView extends StatefulWidget {
  @override
  _MainTabViewState createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.w600);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Home',
      style: optionStyle,
    ),
    Text(
      'Likes',
      style: optionStyle,
    ),
    Text(
      'Search',
      style: optionStyle,
    ),
    Text(
      'Profile',
      style: optionStyle,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1))
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              rippleColor: Colors.grey[300],
              hoverColor: Colors.grey[100],
              gap: 8.0,
              activeColor: AppColor.primary,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              tabBackgroundColor: Colors.grey[100],
              textStyle: const TextStyle(
                color: AppColor.primary,
                fontFamily: AppFont.aveNextLT,
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              ),
              tabs: const <GButton>[
                GButton(
                  backgroundColor: AppColor.bgNavBar,
                  icon: LineIcons.home,
                  text: 'Home',
                ),
                GButton(
                  backgroundColor: AppColor.bgNavBar,
                  icon: LineIcons.heart_o,
                  text: 'Orders',
                ),
                GButton(
                  backgroundColor: AppColor.bgNavBar,
                  icon: LineIcons.search,
                  text: 'Saved',
                ),
                GButton(
                  backgroundColor: AppColor.bgNavBar,
                  icon: LineIcons.user,
                  text: 'Profile',
                ),
              ],
              selectedIndex: _selectedIndex,
              onTabChange: _onTabChange,
            ),
          ),
        ),
      ),
    );
  }

  void _onTabChange(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
