import 'package:flutter/material.dart';

class ExampleSlider extends StatefulWidget {
  ExampleSlider({Key key, this.title}) : super(key: key);

  final String title;
  static const String routeName = 'example_slider';

  @override
  _ExampleSliderState createState() => _ExampleSliderState();
}

class _ExampleSliderState extends State<ExampleSlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: null,
        ),
      ),
    );
  }
}
