import 'package:flutter/material.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';

class SizeProductBox extends StatelessWidget {
  const SizeProductBox({
    super.key,
    required this.sizeProduct,
    required this.sizeProductSelected,
  });

  final String sizeProduct;
  final String sizeProductSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.height / 26,
      width: AppDimens.height / 26,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: AppColor.lightGray, width: 0.5),
          borderRadius: BorderRadius.circular(AppDimens.verySmall),
          boxShadow: sizeProduct.toUpperCase() == sizeProductSelected
              ? const [
                  BoxShadow(
                      color: AppColor.lightGray,
                      spreadRadius: 0,
                      blurRadius: 4,
                      offset: Offset(1, 2))
                ]
              : null),
      child: Center(
          child: Text(
        sizeProductSelected,
        style: AppTextTheme.titleMedium.copyWith(
            color: sizeProduct.toUpperCase() == sizeProductSelected
                ? AppColor.dark
                : AppColor.lightGray),
      )),
    );
  }
}
