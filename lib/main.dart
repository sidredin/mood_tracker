import 'package:flutter/material.dart';
import 'package:mood_tracker/views/screens/chart_screen.dart';
import 'package:mood_tracker/views/screens/examples.dart';
import 'package:mood_tracker/views/screens/home_page_screen.dart';
import 'package:mood_tracker/views/screens/point_view_screen.dart';
import 'package:mood_tracker/views/styling/mt_colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Трекер настроения',
      theme: ThemeData(
        primarySwatch: MTColors.kMainColorBlue,
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
