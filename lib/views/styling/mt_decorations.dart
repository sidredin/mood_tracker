import 'package:flutter/material.dart';

class MTDecorations {
  static const kTextFieldInputDecoration = InputDecoration(
    filled: true,
    fillColor: Colors.white,
    hintText: 'Опишите свои мысли, чувства \nна данный момент',
    hintStyle: TextStyle(
      color: Colors.grey,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(
        Radius.circular(10.0),
      ),
      // borderSide: BorderSide.none,
    ),
  );
}
