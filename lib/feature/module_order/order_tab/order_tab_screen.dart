import 'package:flutter/material.dart';
import 'package:foodedu/general/constant/app_theme.dart';

class OrderTabScreen extends StatefulWidget {
  @override
  _OrderTabScreenState createState() => _OrderTabScreenState();
}

class _OrderTabScreenState extends State<OrderTabScreen> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: const SafeArea(
            child: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_transit)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
            Icon(Icons.directions_bike),
          ],
        ),
      ),
    );
  }
}
