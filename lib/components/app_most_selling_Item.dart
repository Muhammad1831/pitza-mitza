import 'package:flutter/material.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';

class AppMostSellingItem extends StatelessWidget {
  const AppMostSellingItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(
            left: AppDimens.medium, bottom: AppDimens.height / 13),
        child: Container(
          width: AppDimens.width / 2.3,
          decoration: BoxDecoration(
              color: AppColor.light,
              borderRadius: BorderRadius.circular(AppDimens.verySmall),
              boxShadow: [
                BoxShadow(
                    color: AppColor.shadow.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 4,
                    offset: const Offset(0, 4)),
              ]),
          child: Column(
            children: [
              Container(
                height: AppDimens.height / 8.1,
                width: AppDimens.width / 2.3,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                      top: Radius.circular(AppDimens.verySmall)),
                  image: DecorationImage(
                      image: AssetImage(
                        Assets.images.pizzaPicture1.path,
                      ),
                      fit: BoxFit.cover),
                ),
              ),
              AppDimens.verySmall.height,
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppString.pitzaMitza,
                        style: AppTextTheme.titleMedium,
                      ),
                      (AppDimens.verySmall / 2).height,
                      Text(
                        'جزو پرطرفدار ترین پیتزا های پیتزامیتزا',
                        style: AppTextTheme.bodyVerySmall,
                      ),
                      AppDimens.verySmall.height,
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          '${'137000'.englishToPersion()} تومان',
                          style: AppTextTheme.labelMedium
                              .copyWith(color: AppColor.primary),
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
