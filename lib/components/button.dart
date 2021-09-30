import 'package:flutter/material.dart';
import 'package:mood_tracker/constants.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.text,
    this.color,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final Color? color;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: onPressed,
      style: ButtonStyle(
        textStyle: kBtnTextStyle,
        backgroundColor: (color != null)
            ? MaterialStateProperty.all<Color?>(color)
            : MaterialStateProperty.all<Color>(kMainColorGreen),
      ),
    );
  }
}
