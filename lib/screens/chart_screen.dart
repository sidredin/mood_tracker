import 'package:flutter/material.dart';
import 'package:mood_tracker/screens/point_view_screen.dart';

class ChartScreen extends StatefulWidget {
  ChartScreen({Key? key, this.title}) : super(key: key);

  final String? title;
  static const String routeName = 'chart_screen';

  @override
  _ChartScreenState createState() => _ChartScreenState();
}

class _ChartScreenState extends State<ChartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: Center(
        child: Column(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, PointViewScreen.routeName);
        },
        tooltip: 'Chart',
        child: Icon(Icons.bubble_chart),
      ),
    );
  }
}
