import 'package:flutter/material.dart';

// ignore: must_be_immutable
class AppElevatedButton extends StatelessWidget {
  AppElevatedButton({
    super.key,
    required this.onPressed,
    required this.height,
    required this.width,
    required this.style,
    required this.child,
  });

  void Function() onPressed;
  final double height;
  final double width;
  final ButtonStyle? style;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style!
          .copyWith(fixedSize: MaterialStateProperty.all(Size(width, height))),
      child: child,
    );
  }
}
