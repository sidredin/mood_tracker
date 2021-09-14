import 'package:flutter/material.dart';
import 'package:mood_tracker/screens/chart_screen.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key key, this.title}) : super(key: key);

  final String title;
  static const String id = 'home_page_screen';

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, ChartScreen.id);
        },
        tooltip: 'Chart',
        child: Icon(Icons.bar_chart_rounded),
      ),
    );
  }
}
