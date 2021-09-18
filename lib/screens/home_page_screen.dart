import 'package:flutter/material.dart';
import 'package:mood_tracker/constants.dart';
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
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.sentiment_satisfied_alt,
                        size: kIconsSize,
                        color: kMainColorGreen,
                      ),
                      Icon(
                        Icons.sentiment_neutral,
                        size: kIconsSize,
                        color: kMainColorYellow,
                      ),
                      Icon(
                        Icons.sentiment_very_dissatisfied,
                        size: kIconsSize,
                        color: kMainColorRed,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: null,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.blue,
              child: Row(),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.green,
              child: TextButton(
                child: Text('Сохранить'),
                onPressed: null,
              ),
            ),
          ),
        ],
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
