// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle get mainTextStyle {
    return TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      letterSpacing: 1.0,
    );
  }

  static TextStyle get subTextStyle => TextStyle(
        fontSize: 20,
        letterSpacing: 1.0,
      );

  /*
  var mainTextStyle = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);

  // ignore: prefer_const_constructors
  var subTextStyle = TextStyle(
    fontSize: 18,
  );
  */
}
