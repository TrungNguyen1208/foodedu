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
    return MaterialApp(
      title: 'Foodude',
      theme: AppTheme.lightTheme,
      home: SignInScreen(),
    );
  }
}

class TestDemoScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}


