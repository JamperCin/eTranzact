import 'package:flutter/material.dart';

class AppTextStyles {
//================Themes ===========================
  static double wordSpacing = 1.5;
  static double height = 1.3;
  static double letterSpacing = 0.2;

  static TextStyle display1 = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 36,
    wordSpacing: wordSpacing,
    height: height,
    letterSpacing: letterSpacing,
    color: Colors.black,
  );

  static TextStyle headline = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 30,
    wordSpacing: wordSpacing,
    height: height,
    letterSpacing: letterSpacing,
    color: Colors.black,
  );

  static TextStyle title = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
    wordSpacing: wordSpacing,
    height: height,
    letterSpacing: letterSpacing,
    color: Colors.black,
  );

  static TextStyle subtitle = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 20,
    wordSpacing: wordSpacing,
    height: height,
    letterSpacing: letterSpacing,
    color: Colors.black,
  );

  static TextStyle description = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 16,
    wordSpacing: wordSpacing,
    height: height,
    letterSpacing: letterSpacing,
    color: Colors.black,
  );

  static TextStyle subDescription = TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: 12,
    wordSpacing: wordSpacing,
    height: height,
    letterSpacing: letterSpacing,
    color: Colors.black,
  );
}
