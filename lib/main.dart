import 'package:flutter/material.dart';

import 'feature/sign_in/sign_in_screen.dart';
import 'general/constant/app_theme.dart';

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
        final FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
          currentFocus.focusedChild.unfocus();
        }
      },
      child: MaterialApp(
        title: 'Foodude',
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        home: SignInScreen(),
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


