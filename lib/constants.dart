import 'package:flutter/material.dart';

const MaterialColor kMainColorBlue = const MaterialColor(
  0xFF375E97,
  const <int, Color>{
    50: const Color(0xFF375E97),
    100: const Color(0xFF375E97),
    200: const Color(0xFF375E97),
    300: const Color(0xFF375E97),
    400: const Color(0xFF375E97),
    500: const Color(0xFF375E97),
    600: const Color(0xFF375E97),
    700: const Color(0xFF375E97),
    800: const Color(0xFF375E97),
    900: const Color(0xFF375E97),
  },
);

const MaterialColor kMainColorGreen = const MaterialColor(
  0xFF3F681C,
  const <int, Color>{
    50: const Color(0xFF3F681C),
    100: const Color(0xFF3F681C),
    200: const Color(0xFF3F681C),
    300: const Color(0xFF3F681C),
    400: const Color(0xFF3F681C),
    500: const Color(0xFF3F681C),
    600: const Color(0xFF3F681C),
    700: const Color(0xFF3F681C),
    800: const Color(0xFF3F681C),
    900: const Color(0xFF3F681C),
  },
);

const MaterialColor kMainColorRed = const MaterialColor(
  0xFFFB6542,
  const <int, Color>{
    50: const Color(0xFFFB6542),
    100: const Color(0xFFFB6542),
    200: const Color(0xFFFB6542),
    300: const Color(0xFFFB6542),
    400: const Color(0xFFFB6542),
    500: const Color(0xFFFB6542),
    600: const Color(0xFFFB6542),
    700: const Color(0xFFFB6542),
    800: const Color(0xFFFB6542),
    900: const Color(0xFFFB6542),
  },
);

const MaterialColor kMainColorYellow = const MaterialColor(
  0xFFFFBB00,
  const <int, Color>{
    50: const Color(0xFFFFBB00),
    100: const Color(0xFFFFBB00),
    200: const Color(0xFFFFBB00),
    300: const Color(0xFFFFBB00),
    400: const Color(0xFFFFBB00),
    500: const Color(0xFFFFBB00),
    600: const Color(0xFFFFBB00),
    700: const Color(0xFFFFBB00),
    800: const Color(0xFFFFBB00),
    900: const Color(0xFFFFBB00),
  },
);

const MaterialColor kInactiveBtnColor = const MaterialColor(
  0xFFC4C4C4,
  const <int, Color>{
    50: const Color(0xFFC4C4C4),
    100: const Color(0xFFC4C4C4),
    200: const Color(0xFFC4C4C4),
    300: const Color(0xFFC4C4C4),
    400: const Color(0xFFC4C4C4),
    500: const Color(0xFFC4C4C4),
    600: const Color(0xFFC4C4C4),
    700: const Color(0xFFC4C4C4),
    800: const Color(0xFFC4C4C4),
    900: const Color(0xFFC4C4C4),
  },
);

const double kIconsSize = 50.0;

MaterialStateProperty<TextStyle> kBtnTextStyle =
    MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 16));

MaterialStateProperty<Color> kBtnColor =
    MaterialStateProperty.all<Color>(kMainColorGreen);

const kTextFieldInputDecoration = InputDecoration(
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
