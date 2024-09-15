import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/components/app_back_icon.dart';
import 'package:pitza_mitza/components/app_elevated_button.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/theme/app_button_theme.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(AppDimens.large),
        child: Column(
          children: [
            // header
            Row(
              children: [
                AppBackIcon(
                    onTap: () {
                      Get.back();
                    },
                    borderColor: AppColor.lightGray,
                    iconColor: AppColor.dark),
                AppDimens.veryLarge.width,
                Text(
                  AppString.myOrderList,
                  style: AppTextTheme.titleMedium,
                )
              ],
            ),
            AppDimens.veryLarge.height,
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                // physics: const NeverScrollableScrollPhysics(),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: AppDimens.veryLarge),
                    child: Container(
                      height: AppDimens.height / 5,
                      width: AppDimens.width,
                      decoration: const BoxDecoration(
                          color: AppColor.productItemBackGround,
                          borderRadius: BorderRadius.all(
                              Radius.circular(AppDimens.large)),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 4,
                                spreadRadius: 0,
                                color: AppColor.shadow)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                            0, AppDimens.large, AppDimens.large, 0),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                // product image
                                SizedBox(
                                    height: AppDimens.height / 10,
                                    width: AppDimens.height / 10,
                                    child: Image.asset(
                                      Assets.images.pizzaVeg.path,
                                    )),
                                AppDimens.verySmall.height,
                                // delete and add button
                                DecoratedBox(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                          AppDimens.verySmall),
                                      border: Border.all(
                                          color: AppColor.borderGray,
                                          width: 1.5)),
                                  child: SizedBox(
                                    height: AppDimens.height / 30,
                                    width: AppDimens.width / 5,
                                    child: FittedBox(
                                      fit: BoxFit.cover,
                                      child: Row(
                                        children: [
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                Icons.add,
                                                size: AppDimens.large,
                                              )),
                                          Text(
                                            '1'.englishToPersion(),
                                            style: AppTextTheme.bodyLarge,
                                          ),
                                          IconButton(
                                              onPressed: () {},
                                              icon: const Icon(
                                                CupertinoIcons.delete,
                                                size: AppDimens.large,
                                              )),
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            AppDimens.veryLarge.width,
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'پیتزا مارگاریتا',
                                  style: AppTextTheme.titleLarge,
                                ),
                                AppDimens.verySmall.height,
                                Text(
                                  'یک عدد پیتزا مارگاریتا سایز متوسط',
                                  style: AppTextTheme.bodySmall,
                                ),
                                AppDimens.veryLarge.height,
                                Text(
                                  '${'230000'.englishToPersion()} ءتءء',
                                  style: AppTextTheme.labelLarge
                                      .copyWith(color: AppColor.primary),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            (AppDimens.height / 30).height,
            const Divider(
              color: AppColor.divider,
              height: 1.5,
            ),
            AppDimens.veryLarge.height,
            Row(
              children: [
                Expanded(
                  child: Text(
                    AppString.priceProducts,
                    style: AppTextTheme.bodyMedium,
                  ),
                ),
                Text(
                  '${'480000'.englishToPersion()} ءتء',
                  style: AppTextTheme.bodyMedium,
                ),
              ],
            ),
            AppDimens.verySmall.height,
            Row(
              children: [
                Expanded(
                  child: Text(
                    AppString.shippingCost,
                    style: AppTextTheme.bodyMedium,
                  ),
                ),
                Text(
                  '${'480000'.englishToPersion()} ءتء',
                  style: AppTextTheme.bodyMedium,
                ),
              ],
            ),
            AppDimens.large.height,
            Row(
              children: [
                Expanded(
                  child: Text(
                    AppString.finalPrice,
                    style: AppTextTheme.labelMedium,
                  ),
                ),
                Text(
                  '${'480000'.englishToPersion()} ءتء',
                  style: AppTextTheme.labelMedium,
                ),
              ],
            ),
            AppDimens.veryLarge.height,
            AppElevatedButton(
                onPressed: () {},
                height: AppDimens.height / 15,
                width: AppDimens.width,
                style: AppButtonTheme.primaryBackGroundColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppDimens.verySmall.width,
                    Text(AppString.recordOrder,
                        style: AppTextTheme.labelLarge
                            .copyWith(color: AppColor.light)),
                    AppDimens.verySmall.width,
                    const Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                      size: 20,
                    ),
                  ],
                ))
          ],
        ),
      ),
    ));
  }
}
