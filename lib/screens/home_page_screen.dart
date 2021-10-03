import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mood_tracker/components/button.dart';
import 'package:mood_tracker/constants.dart';
import 'package:mood_tracker/models/graph_point.dart';
import 'package:mood_tracker/screens/chart_screen.dart';
import 'package:mood_tracker/services/db_interaction.dart';
import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class HomePageScreen extends StatefulWidget {
  HomePageScreen({Key? key, this.title}) : super(key: key);

  final String? title;
  static const String routeName = 'home_page_screen';

  @override
  _HomePageScreenState createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  double? _value = 0;
  String? comment;
  String? commentForSaving;
  Widget iconChecked = Container();
  late DbInteractions db;

  @override
  void initState() {
    try {
      db = DbInteractions();
    } catch (e) {
      print("Возникло исключение: $e");
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title!),
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
                  Stack(
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.note_alt_outlined,
                          color: Colors.black,
                        ),
                        highlightColor: Colors.red,
                        splashColor: Colors.yellow,
                        iconSize: kIconsSize,
                        onPressed: () async {
                          await showModalBottomSheet<String>(
                            isScrollControlled: true,
                            context: context,
                            builder: (BuildContext context) {
                              return Container(
                                child: Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Expanded(child: Container()),
                                      Expanded(
                                        flex: 10,
                                        child: Center(
                                          child: Column(
                                            children: [
                                              Container(
                                                padding: EdgeInsets.all(20.0),
                                                child: TextFormField(
                                                  initialValue:
                                                      commentForSaving,
                                                  maxLengthEnforcement:
                                                      MaxLengthEnforcement
                                                          .enforced,
                                                  maxLines: null,
                                                  maxLength: 800,
                                                  style: TextStyle(
                                                    color: Colors.black,
                                                  ),
                                                  decoration:
                                                      kTextFieldInputDecoration,
                                                  onChanged: (value) {
                                                    if (value.trim() != '') {
                                                      comment = value;
                                                    } else {
                                                      comment = null;
                                                    }
                                                  },
                                                ),
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Button(
                                                    text: 'Отменить',
                                                    color: kInactiveBtnColor,
                                                    onPressed: () {
                                                      setState(() {
                                                        comment =
                                                            commentForSaving;
                                                      });
                                                      return Navigator.pop(
                                                          context);
                                                    },
                                                  ),
                                                  SizedBox(
                                                    width: 10.0,
                                                  ),
                                                  Button(
                                                    text: 'Сохранить',
                                                    onPressed: () {
                                                      setState(() {
                                                        commentForSaving =
                                                            comment;
                                                      });
                                                      return Navigator.pop(
                                                          context);
                                                    },
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            },
                          );
                          if (commentForSaving != null) {
                            setState(() {
                              iconChecked = kIconCheckedActive;
                            });
                          } else {
                            setState(() {
                              iconChecked = Container();
                            });
                          }
                        },
                      ),
                      iconChecked,
                    ],
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
                  child: Button(
                    text: 'Сохранить',
                    onPressed: () async {
                      var graphPoint = GraphPoint(
                        datetime: DateTime.now().millisecondsSinceEpoch,
                        moodValue: _value!.toInt(),
                        comment: commentForSaving,
                      );
                      try {
                        db.insertGraphPoint(graphPoint);
                        print(await db.graphPoints());
                      } catch (e) {
                        print("Возникло исключение: $e");
                      }
                    },
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
