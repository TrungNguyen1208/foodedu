import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_constant.dart';

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
          padding: EdgeInsets.symmetric(horizontal: AppDimen.normalHozPadding, vertical: 50.0),
          children: <Widget>[
            Text('Sign In',
                style: Theme.of(context).textTheme.headline3,
                maxLines: 1,
                textAlign: TextAlign.left),
          ],
        ),
      ),
    );
  }
}
