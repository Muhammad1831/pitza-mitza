import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppDimens {
  AppDimens._();

  static double height = Get.size.height;
  static double width = Get.size.width;
  static double bodyMargin = Get.size.width / 19.5;

  static const double verySmall = 8.0;
  static const double small = 12.0;
  static const double medium = 16.0;
  static const double large = 20.0;
  static const double veryLarge = 24.0;

  static TextTheme textTheme = Get.textTheme;
  static ElevatedButtonThemeData elevatedButtonThemeData =
      Get.theme.elevatedButtonTheme;
}
