import 'package:flutter/material.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';

class CustomClipPathProduct extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double height = size.height;
    double width = size.width;

    Path path = Path();

    path.lineTo(0, height - AppDimens.height / 7);
    path.quadraticBezierTo(width * 0.2, height, width * 0.5, height);
    path.quadraticBezierTo(
        width * 0.8, height, width, height - AppDimens.height / 7);
    path.lineTo(width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
