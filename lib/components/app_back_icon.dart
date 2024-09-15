import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';

// ignore: must_be_immutable
class AppBackIcon extends StatelessWidget {
  AppBackIcon({
    super.key,
    required this.onTap,
    required this.borderColor,
    required this.iconColor,
  });

  void Function() onTap;
  final Color borderColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppDimens.height / 21,
        width: AppDimens.height / 21,
        decoration: BoxDecoration(
          border: Border.all(color: borderColor, width: 1),
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Icon(
            IconlyLight.arrow_right_2,
            color: iconColor,
            size: 24,
          ),
        ),
      ),
    );
  }
}
