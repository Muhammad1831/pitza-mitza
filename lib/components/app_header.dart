import 'package:flutter/material.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          right: AppDimens.verySmall, top: AppDimens.bodyMargin),
      child: Row(
        children: [
          Image.asset(
            Assets.images.logo.path,
            height: AppDimens.height / 16,
          ),
          Text(
            AppString.pitzaMitza,
            style: AppTextTheme.displayMedium.copyWith(color: AppColor.primary),
          )
        ],
      ),
    );
  }
}
