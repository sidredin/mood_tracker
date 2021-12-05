import 'package:flutter/material.dart';
import 'package:mood_tracker/views/styling/mt_colors.dart';
import 'package:mood_tracker/views/styling/mt_text_styles.dart';

class MTButton extends StatelessWidget {
  const MTButton({
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
        textStyle: MTTextStyles.kBtnTextStyle,
        backgroundColor: (color != null)
            ? MaterialStateProperty.all<Color?>(color)
            : MaterialStateProperty.all<Color>(MTColors.kMainColorGreen),
      ),
    );
  }
}
