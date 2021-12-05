import 'package:flutter/material.dart';

class Examples extends StatefulWidget {
  Examples({Key? key, this.title}) : super(key: key);

  final String? title;
  static const String routeName = 'example_slider';

  @override
  _ExamplesState createState() => _ExamplesState();
}

class _ExamplesState extends State<Examples> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [],
        ),
      ),
    );
  }
}
