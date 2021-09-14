import 'package:flutter/material.dart';
import 'package:mood_tracker/constants.dart';
import 'package:mood_tracker/screens/home_page_screen.dart';

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
      home: HomePageScreen(title: 'Трекер настроения'),
    );
  }
}
