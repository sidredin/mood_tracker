import 'package:flutter/material.dart';
import 'package:mood_tracker/constants.dart';
import 'package:mood_tracker/example_slider.dart';
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
      initialRoute: HomePageScreen.id,
      routes: {
        HomePageScreen.id: (context) =>
            HomePageScreen(title: 'Трекер настроения'),
        ChartScreen.id: (context) => ChartScreen(title: 'График'),
        PointViewScreen.id: (context) => PointViewScreen(title: 'Точка'),
        ExampleSlider.id: (context) => ExampleSlider(title: 'Слайдеры'),
      },
    );
  }
}
