import 'package:flutter/material.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';

class AppButtonTheme {
  AppButtonTheme._();

  static ButtonStyle primaryBackGroundColor = ButtonStyle(
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimens.small))),
    backgroundColor: MaterialStateProperty.resolveWith((states) {
      if (states.contains(MaterialState.pressed)) {
        MaterialStateProperty.all(AppColor.buttonBackGroundWhenPressed);
      } else {
        MaterialStateProperty.all(AppColor.primary);
      }
      return null;
    }),
    splashFactory: InkRipple.splashFactory,
  );

  static ButtonStyle noBackGroundColor = ButtonStyle(
    shape: MaterialStateProperty.all(RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppDimens.small))),
    backgroundColor:MaterialStateProperty.all(AppColor.light), 
    side: MaterialStateProperty.all(
        const BorderSide(color: AppColor.buttonBorderSide, width: 1)),
    splashFactory: InkRipple.splashFactory,
  );
}
