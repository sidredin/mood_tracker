import 'package:flutter/material.dart';
import 'package:mood_tracker/constants.dart';
import 'package:mood_tracker/screens/chart_screen.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key key, this.title}) : super(key: key);

  final String title;
  static const String routeName = 'home_page_screen';

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  double _value = 0;

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
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.sentiment_satisfied_alt,
                        size: kIconsSize,
                        color: kMainColorGreen,
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
                    alignment: Alignment.centerLeft,
                    child: SfSliderTheme(
                      data: SfSliderThemeData(
                          // activeTrackHeight: 10,
                          // inactiveTrackHeight: 10,
                          ),
                      child: SfSlider.vertical(
                        min: -10,
                        max: 10,
                        activeColor: kMainColorYellow,
                        stepSize: 1.0,
                        value: _value,
                        interval: 1.0,
                        showTicks: true,
                        showLabels: true,
                        enableTooltip: true,
                        onChanged: (dynamic value) {
                          setState(() {
                            _value = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Expanded(
                  // пустышка, чтобы шкала была по центру экрана
                  child: Container(),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(
                      Icons.note_alt_outlined,
                      color: Colors.black,
                    ),
                    highlightColor: Colors.red,
                    splashColor: Colors.yellow,
                    iconSize: 48,
                    onPressed: () {
                      // setState(() {
                      //   _isBluetoothOn = !_isBluetoothOn;
                      // });
                    },
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.mic_rounded,
                      color: Colors.black,
                    ),
                    highlightColor: Colors.red,
                    splashColor: Colors.yellow,
                    iconSize: 48,
                    onPressed: () {
                      // setState(() {
                      //   _isBluetoothOn = !_isBluetoothOn;
                      // });
                    },
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: Stack(
                      children: <Widget>[
                        Positioned.fill(
                          child: Container(
                            color: kMainColorGreen,
                          ),
                        ),
                        SizedBox(
                          height: 30,
                          child: TextButton(
                            style: TextButton.styleFrom(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 1.0, horizontal: 10.0),
                              primary: Colors.white,
                              textStyle: const TextStyle(fontSize: 20),
                            ),
                            onPressed: () {},
                            child: const Text('Сохранить'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, ChartScreen.routeName);
        },
        tooltip: 'Chart',
        child: Icon(Icons.bar_chart_rounded),
      ),
    );
  }
}
