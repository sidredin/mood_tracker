import 'package:flutter/material.dart';
import 'package:mood_tracker/constants.dart';
import 'package:mood_tracker/examples.dart';
import 'package:mood_tracker/screens/chart_screen.dart';
import 'package:mood_tracker/screens/home_page_screen.dart';
import 'package:mood_tracker/screens/point_view_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Трекер настроения',
      theme: ThemeData(
        primarySwatch: kMainColorBlue,
      ),
      initialRoute: HomePageScreen.routeName,
      routes: {
        HomePageScreen.routeName: (context) =>
            HomePageScreen(title: 'Трекер настроения'),
        ChartScreen.routeName: (context) => ChartScreen(title: 'График'),
        PointViewScreen.routeName: (context) => PointViewScreen(title: 'Точка'),
        Examples.routeName: (context) => Examples(title: 'Примеры'),
      },
    );
  }
}
