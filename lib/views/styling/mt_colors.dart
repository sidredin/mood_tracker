import 'package:flutter/material.dart';

class MTColors {
  static const Color gold = Color(0xFFFCAA0D);
  static const Color lightGrey = Color(0xFFF5F5F5);
  static const Color black575757 = Color(0xFF575757);
  static const Color grey9A9A9A = Color(0xFF9A9A9A);
  static const Color purpleColor = Color(0xFFBC97EB);

  static const MaterialColor kMainColorBlue = const MaterialColor(
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

  static const MaterialColor kMainColorGreen = const MaterialColor(
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

  static const MaterialColor kMainColorRed = const MaterialColor(
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

  static const MaterialColor kMainColorYellow = const MaterialColor(
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

  static const MaterialColor kInactiveBtnColor = const MaterialColor(
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

  static MaterialStateProperty<Color> kBtnColor =
      MaterialStateProperty.all<Color>(kMainColorGreen);
}
