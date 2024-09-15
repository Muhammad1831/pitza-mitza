import 'package:flutter/material.dart';

extension AppSizedBox on double {
  SizedBox get height => SizedBox(
        height: this,
      );

  SizedBox get width => SizedBox(
        width: this,
      );
}

extension EnglishToPersion on String {
  String englishToPersion() {
    String number = this;

    List en = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
    List fa = ['۰', '۱', '۲', '۳', '۴', '۵', '۶', '۷', '۸', '۹'];

    for (var element in en) {
      number = number.replaceAll(element, fa[en.indexOf(element)]);
    }
    return number;
  }
}

extension ColorExtensions on Color {
  ColorFilter toColorFilter() {
    final double r = red / 255;
    final double g = green / 255;
    final double b = blue / 255;

    return ColorFilter.matrix(<double>[
      r, 0, 0, 0, 0,
      0, g, 0, 0, 0,
      0, 0, b, 0, 0,
      0, 0, 0, 1, 0,
    ]);
  }
}
