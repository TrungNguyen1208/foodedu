import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil_init.dart';

import 'feature/main_tab/main_tab_view.dart';
import 'general/constant/app_theme.dart';
import 'routues/routues.dart';

void main() {
  runApp(FoodApp());
}

class FoodApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // https://flutterigniter.com/dismiss-keyboard-form-lose-focus/
        final currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          currentFocus.focusedChild.unfocus();
        }
      },
      child: ScreenUtilInit(
        designSize: const Size(375.0, 812.0),
        allowFontScaling: false,
        builder: () => MaterialApp(
          title: 'Foodude',
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          home: MainTabView(),
          onGenerateRoute: Routes.buildRoutes,
        ),
      ),
    );
  }
}

class TestDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

    );
  }
}


