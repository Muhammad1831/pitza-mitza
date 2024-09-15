import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';

// ignore: must_be_immutable
class AppTextField extends StatefulWidget {
  AppTextField({
    super.key,
    required this.controller,
    required this.obscureText,
    this.keyboardType,
    required this.autofocus,
    required this.prefixIcon,
    required this.hintText,
  });

  TextEditingController? controller;
  final bool obscureText;
  TextInputType? keyboardType;
  final bool autofocus;
  final String prefixIcon;
  final String hintText;

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  FocusNode focusNode = FocusNode();
  Color borderColor = AppColor.textFieldUnselected;
  Color prefixIconColor = AppColor.textFieldUnselected;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(() {
      setState(() {
        borderColor = focusNode.hasFocus
            ? AppColor.textFieldSelected
            : AppColor.textFieldUnselected;
        prefixIconColor = focusNode.hasFocus
            ? AppColor.textFieldSelected
            : AppColor.textFieldUnselected;
      });
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Focus(
      focusNode: focusNode,
      child: Container(
        height: AppDimens.height / 15,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppDimens.verySmall),
            border: Border.all(color: borderColor, width: 1)),
        child: TextField(
          controller: widget.controller,
          obscureText: widget.obscureText,
          obscuringCharacter: "•",
          keyboardType: widget.keyboardType,
          style: AppTextTheme.bodyMedium,
          cursorColor: AppColor.dark,
          autofocus: widget.autofocus,
          decoration: InputDecoration(
              border: InputBorder.none,
              prefixIcon: Padding(
                padding: const EdgeInsets.fromLTRB(AppDimens.verySmall,
                    AppDimens.medium, AppDimens.medium, AppDimens.medium),
                child: SvgPicture.asset(
                  widget.prefixIcon,
                  width: 24,
                  height: 24,
                  colorFilter: prefixIconColor.toColorFilter(),
                ),
              ),
              labelText: widget.hintText,
              labelStyle: AppTextTheme.bodyMedium
                  .copyWith(color: AppColor.textFieldLabel)),
        ),
      ),
    );
  }
}
