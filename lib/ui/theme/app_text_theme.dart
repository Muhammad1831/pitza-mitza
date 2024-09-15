import 'package:flutter/material.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/gen/fonts.gen.dart';

class AppTextTheme {
  AppTextTheme._();

  static TextStyle displayLarge = const TextStyle(
    fontFamily: FontFamily.kalameh,
    fontSize: 24,
    color: AppColor.dark,
    fontWeight: FontWeight.w700,
  );
  static TextStyle displayMedium = const TextStyle(
    fontFamily: FontFamily.kalameh,
    fontSize: 20,
    color: AppColor.dark,
    fontWeight: FontWeight.w500,
  );
  static TextStyle displaySmall = const TextStyle(
    fontFamily: FontFamily.kalameh,
    fontSize: 16,
    color: AppColor.dark,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodyLarge = const TextStyle(
    fontFamily: FontFamily.iransansX,
    fontSize: 16,
    color: AppColor.dark,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodyMedium = const TextStyle(
    fontFamily: FontFamily.iransansX,
    fontSize: 14,
    color: AppColor.dark,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodySmall = const TextStyle(
    fontFamily: FontFamily.iransansX,
    fontSize: 12,
    color: AppColor.dark,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodyVerySmall = const TextStyle(
    fontFamily: FontFamily.iransansX,
    fontSize: 10,
    color: AppColor.dark,
    fontWeight: FontWeight.w400,
  );
  static TextStyle titleLarge = const TextStyle(
    fontFamily: FontFamily.iransansX,
    fontSize: 20,
    color: AppColor.dark,
    fontWeight: FontWeight.w500,
  );
  static TextStyle titleMedium = const TextStyle(
    fontFamily: FontFamily.iransansX,
    fontSize: 16,
    color: AppColor.dark,
    fontWeight: FontWeight.w500,
  );
  static TextStyle titleSmall = const TextStyle(
    fontFamily: FontFamily.iransansX,
    fontSize: 14,
    color: AppColor.dark,
    fontWeight: FontWeight.w500,
  );
  static TextStyle labelLarge = const TextStyle(
    fontFamily: FontFamily.iransansX,
    fontSize: 16,
    color: AppColor.dark,
    fontWeight: FontWeight.w700,
  );
  static TextStyle labelMedium = const TextStyle(
    fontFamily: FontFamily.iransansX,
    fontSize: 14,
    color: AppColor.dark,
    fontWeight: FontWeight.w600,
  );
  static TextStyle labelSmall = const TextStyle(
    fontFamily: FontFamily.iransansX,
    fontSize: 12,
    color: AppColor.dark,
    fontWeight: FontWeight.w500,
  );
}
