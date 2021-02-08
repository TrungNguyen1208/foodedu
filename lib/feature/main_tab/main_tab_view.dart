import 'package:flutter/material.dart';
import 'package:foodedu/commom/image/nav_bar_image.dart';
import 'package:foodedu/general/constant/app_theme.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MainTabView extends StatefulWidget {
  @override
  _MainTabViewState createState() => _MainTabViewState();
}

class _MainTabViewState extends State<MainTabView> {
  int _selectedIndex = 0;

  final PageController _pageController = PageController(initialPage: 0, keepPage: true,);
  static const List<Color> colors = [
    Colors.purple,
    Colors.pink,
    Colors.amber,
    Colors.teal
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: PageView.builder(
        physics: const ClampingScrollPhysics(),
        itemCount: 4,
        onPageChanged: _onPageChanged,
        controller: _pageController,
        itemBuilder: (context, position) {
          return Container(
            color: colors[position],
          );
        },
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
              rippleColor: Colors.grey[400],
              hoverColor: Colors.grey[300],
              gap: 8.0,
              activeColor: AppColor.primary,
              iconSize: 24,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: const Duration(milliseconds: 400),
              textStyle: const TextStyle(
                color: AppColor.primary,
                fontFamily: AppFont.aveNextLT,
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
              ),
              tabs: <GButton>[
                GButton(
                  backgroundColor: AppColor.bgNavBar,
                  leading: NavBarImage(
                    imagePath: 'assets/images/home.png',
                    isSelected: _selectedIndex == 0,
                  ),
                  text: 'Home',
                ),
                GButton(
                  backgroundColor: AppColor.bgNavBar,
                  leading: NavBarImage(
                    imagePath: 'assets/images/shopping_bag.png',
                    isSelected: _selectedIndex == 1,
                  ),
                  text: 'Orders',
                ),
                GButton(
                  backgroundColor: AppColor.bgNavBar,
                  leading: NavBarImage(
                    imagePath: 'assets/images/heart.png',
                    isSelected: _selectedIndex == 2,
                  ),
                  text: 'Saved',
                ),
                GButton(
                  backgroundColor: AppColor.bgNavBar,
                  leading: NavBarImage(
                    imagePath: 'assets/images/user.png',
                    isSelected: _selectedIndex == 3,
                  ),
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
    _pageController.jumpToPage(index);
  }

  void _onPageChanged(int page) {
    setState(() {
      _selectedIndex = page;
    });
  }
}
