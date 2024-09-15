import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:flutter/material.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/components/app_loding.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/controllers/category-controller.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';
import 'package:pitza_mitza/ui/views/home/widgets/banner-slider.dart';
import 'package:pitza_mitza/ui/views/home/widgets/list-fast-food.dart';
import 'package:pitza_mitza/ui/views/home/widgets/fast-food-category.dart';
import 'package:pitza_mitza/ui/views/home/widgets/most-selling-foods.dart';

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.only(
                top: AppDimens.veryLarge, right: AppDimens.bodyMargin),
            child: Obx(() => CategoryController().loding.value == true
                ? const AppLoding()
                : Column(
                    children: [
                      const Align(
                          alignment: Alignment.centerRight,
                          child: Text(AppString.whatFoodWouldYouLikeToOrder)),
                      AppDimens.veryLarge.height,
                      // list of categories
                      FastFoodCategory(),
                      AppDimens.large.height,
                      // list of product in category
                      ListFastFood(),
                      (AppDimens.veryLarge * 1.3).height,
                      // banner slider
                      BannerSlider(),
                      (AppDimens.veryLarge * 1.3).height,
                      // most sellers and see all
                      Padding(
                        padding: const EdgeInsets.only(left: AppDimens.large),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              AppString.bestSellers,
                              style: AppTextTheme.titleMedium,
                            ),
                            Row(
                              children: [
                                Text(
                                  AppString.seeAll,
                                  style: AppTextTheme.labelSmall
                                      .copyWith(color: AppColor.darkGray),
                                ),
                                (AppDimens.verySmall / 2).width,
                                const Icon(
                                  IconlyLight.arrow_left,
                                  size: 16,
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      AppDimens.veryLarge.height,
                      // list of most selling foods
                      const MostSellingFoods(),
                    ],
                  ))),
      ),
    );
  }
}
