import 'package:flutter/material.dart';

class PointViewScreen extends StatefulWidget {
  PointViewScreen({Key key, this.title}) : super(key: key);

  final String title;
  static const String id = 'point_view_screen';

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
      // floatingActionButton: FloatingActionButton(
      //   onPressed: null,
      //   tooltip: 'Chart',
      //   child: Icon(Icons.bar_chart_rounded),
      // ),
    );
  }
}
