import 'package:flutter/material.dart';
import 'package:mood_tracker/examples.dart';

class PointViewScreen extends StatefulWidget {
  PointViewScreen({Key key, this.title}) : super(key: key);

  final String title;
  static const String routeName = 'point_view_screen';

  @override
  _PointViewScreenState createState() => _PointViewScreenState();
}

class _PointViewScreenState extends State<PointViewScreen> {
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
          Navigator.pushNamed(context, Examples.routeName);
        },
        tooltip: 'Chart',
        child: Icon(Icons.slideshow),
      ),
    );
  }
}
