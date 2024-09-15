import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:pitza_mitza/components/app_product_wide_item.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/controllers/list-fast-food-controller.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';
import 'package:pitza_mitza/ui/views/product/product_page.dart';
import 'package:pitza_mitza/ui/views/search/search_page.dart';

// ignore: must_be_immutable
class DiscoverPage extends StatelessWidget {
  DiscoverPage({super.key});
  ListFastFoodController listFastFoodController =
      Get.put(ListFastFoodController());
      
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(
            AppDimens.large, AppDimens.large, AppDimens.large, AppDimens.large),
        child: Column(
          children: [
            Align(
                alignment: Alignment.centerRight,
                child: Text(
                  AppString.findYourFavoriteFood,
                  style: AppTextTheme.titleSmall,
                )),
            AppDimens.medium.height,
            GestureDetector(
              onTap: () {
                Get.to(
                  () => SearchPage(),
                  duration: const Duration(milliseconds: 300),
                  transition: Transition.downToUp,
                );
              },
              child: AnimatedContainer(
                duration: const Duration(seconds: 2),
                curve: Curves.linear,
                height: AppDimens.height / 20,
                width: AppDimens.width / 1.1,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(AppDimens.medium),
                    color: AppColor.searchBarBackGround,
                    boxShadow: const [
                      BoxShadow(
                          blurRadius: 12,
                          spreadRadius: 2,
                          color: AppColor.shadow)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: AppDimens.medium, right: AppDimens.medium),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            IconlyLight.search,
                            color: AppColor.darkGray,
                          ),
                          AppDimens.verySmall.width,
                          Text(AppString.search,
                              style: AppTextTheme.bodyMedium),
                        ],
                      ),
                      const Icon(
                        IconlyLight.filter,
                        color: AppColor.dark,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            AppDimens.veryLarge.height,
            Stack(
              alignment: AlignmentDirectional.center,
              children: [
                SizedBox(
                    height: AppDimens.height / 4.5,
                    child: Container(
                      width: AppDimens.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(AppDimens.medium),
                          image: DecorationImage(
                            image:
                                AssetImage(Assets.images.discoverBanner.path),
                            fit: BoxFit.fill,
                          )),
                    )),
                Positioned(
                    top: AppDimens.veryLarge,
                    right: AppDimens.veryLarge,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppString.bestBurgers,
                          style: AppTextTheme.displayMedium
                              .copyWith(color: Colors.white),
                        ),
                        (AppDimens.verySmall / 2).height,
                        Text(
                          AppString.freshSteak,
                          style: AppTextTheme.displaySmall
                              .copyWith(color: Colors.white),
                        ),
                        AppDimens.medium.height,
                        Container(
                          height: AppDimens.height / 24,
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.circular(AppDimens.verySmall),
                              border:
                                  Border.all(color: Colors.white, width: 1.5)),
                          child: Padding(
                            padding: const EdgeInsets.all(AppDimens.verySmall),
                            child: Row(children: [
                              Text(
                                AppString.order,
                                style: AppTextTheme.displaySmall.copyWith(
                                    color: AppColor.light, fontSize: 12),
                              ),
                              AppDimens.verySmall.width,
                              const Icon(
                                IconlyLight.arrow_left,
                                color: AppColor.light,
                                size: 16,
                              )
                            ]),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
            (AppDimens.height / 26).height,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppString.highestScore,
                  style: AppTextTheme.titleSmall,
                ),
                SizedBox(
                  width: AppDimens.width / 3.6,
                  child: TextButton(
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            AppString.seeAll,
                            style: AppTextTheme.labelSmall,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: AppColor.dark,
                            size: 16,
                          )
                        ],
                      )),
                )
              ],
            ),
            AppDimens.medium.height,
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemCount: 8,
                itemBuilder: (context, index) {
                  return AppProductWideItem(
                    onTap: () {
                      listFastFoodController.item.value = index;
                      Get.to(const ProductPage());
                    },
                    image: Assets.images.potato.path,
                    name: 'پیتزا مارگاریتا',
                    description: 'پیتزا تند به همراه قطعات ژامبون',
                    price: 230000,
                  );
                })
          ],
        ),
      ),
    );
  }
}
