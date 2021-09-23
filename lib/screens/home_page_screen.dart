import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';
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
  double _currentSliderValue = 20;

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
                    child: Slider(
                      value: _currentSliderValue,
                      min: 0,
                      max: 100,
                      divisions: 5,
                      label: _currentSliderValue.round().toString(),
                      onChanged: (double value) {
                        setState(() {
                          _currentSliderValue = value;
                        });
                      },
                    ),
                    // child: FlutterSlider(
                    //   axis: Axis.vertical,
                    //   values: [60],
                    //   fixedValues: [
                    //     FlutterSliderFixedValue(percent: 0, value: "1000"),
                    //     FlutterSliderFixedValue(percent: 10, value: "10K"),
                    //     FlutterSliderFixedValue(percent: 50, value: 50000),
                    //     FlutterSliderFixedValue(percent: 80, value: "80M"),
                    //     FlutterSliderFixedValue(percent: 100, value: "100B"),
                    //   ],
                    //   trackBar: FlutterSliderTrackBar(
                    //     activeTrackBarHeight: 5,
                    //   ),
                    //   max: 10,
                    //   min: -10,
                    //   onDragging: (handlerIndex, lowerValue, upperValue) {
                    //     print('------');
                    //     print(lowerValue);
                    //     print(upperValue);
                    //     // _lowerValue = lowerValue;
                    //     // _upperValue = upperValue;
                    //     // setState(() {});
                    //   },
                    // ),
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
