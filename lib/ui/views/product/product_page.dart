import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/components/app_elevated_button.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/controllers/list-fast-food-controller.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/theme/app_button_theme.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';
import 'package:pitza_mitza/ui/views/product/widget/custom-clippath.dart';
import 'package:pitza_mitza/ui/views/product/widget/product-header.dart';
import 'package:pitza_mitza/ui/views/product/widget/size_product_box.dart';

// ignore: must_be_immutable
class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  ListFastFoodController listFastFoodController =
      Get.put(ListFastFoodController());

  String? sizeProduct;

  @override
  void initState() {
    super.initState();
    sizeProduct = listFastFoodController
        .listFastFood[listFastFoodController.item.value].shortTitle;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  SizedBox(
                    height: AppDimens.height / 2.2,
                  ),
                  ClipPath(
                    clipper: CustomClipPathProduct(),
                    child: Container(
                      height: AppDimens.height / 3,
                      width: AppDimens.width,
                      decoration: const BoxDecoration(
                        color: AppColor.secondary,
                      ),
                    ),
                  ),
                  const ProductHeader(),
                  // product picture
                  Positioned(
                      top: AppDimens.height / 16,
                      child: Image.asset(
                        Assets.images.pizzaVeg.path,
                        height: AppDimens.height / 2.8,
                        width: AppDimens.width / 1.1,
                      )),
                ],
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimens.bodyMargin),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // plus & minus bottom
                        Row(
                          children: [
                            GestureDetector(
                              //TODO plus button
                              onTap: () {},
                              child: Container(
                                height: AppDimens.veryLarge,
                                width: AppDimens.veryLarge,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColor.lightGray,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                    child: Icon(
                                  CupertinoIcons.add,
                                  color: AppColor.dark,
                                  size: 16,
                                )),
                              ),
                            ),
                            AppDimens.medium.width,
                            Text('1'.englishToPersion(),
                                style: AppTextTheme.titleLarge),
                            AppDimens.medium.width,
                            GestureDetector(
                              //TODO minus button
                              onTap: () {},
                              child: Container(
                                height: AppDimens.veryLarge,
                                width: AppDimens.veryLarge,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: AppColor.lightGray,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                    child: Icon(
                                  CupertinoIcons.minus,
                                  color: AppColor.dark,
                                  size: 16,
                                )),
                              ),
                            ),
                          ],
                        ),
                        // size of product (S, M, L)
                        Row(
                          children: [
                            SizeProductBox(
                              sizeProduct: sizeProduct!,
                              sizeProductSelected: 'L',
                            ),
                            AppDimens.small.width,
                            SizeProductBox(
                                sizeProduct: sizeProduct!,
                                sizeProductSelected: 'M'),
                            AppDimens.small.width,
                            SizeProductBox(
                                sizeProduct: sizeProduct!,
                                sizeProductSelected: 'S')
                          ],
                        ),
                      ],
                    ),
                    (AppDimens.height / 26).height,
                    // product name
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        listFastFoodController
                            .listFastFood[listFastFoodController.item.value]
                            .food!
                            .name!,
                        style: AppTextTheme.titleLarge,
                      ),
                    ),
                    AppDimens.large.height,
                    // product content
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        listFastFoodController
                            .listFastFood[listFastFoodController.item.value]
                            .food!
                            .description!,
                        style: AppTextTheme.bodyMedium,
                        textAlign: TextAlign.justify,
                      ),
                    ),
                    (AppDimens.height / 26).height,
                    // price & size product
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Assets.icons.gameIconsPizzaCutter.path),
                        AppDimens.verySmall.width,
                        Column(
                          children: [
                            Text(
                              listFastFoodController
                                  .listFastFood[
                                      listFastFoodController.item.value]
                                  .title!,
                              style: AppTextTheme.bodyMedium,
                            ),
                            (AppDimens.verySmall / 2).height,
                            Text(
                              listFastFoodController
                                  .listFastFood[
                                      listFastFoodController.item.value]
                                  .description!,
                              style: AppTextTheme.bodyVerySmall,
                            )
                          ],
                        ),
                        AppDimens.small.width,
                        // divider
                        Container(
                          height: AppDimens.height / 18,
                          width: 4,
                          decoration: BoxDecoration(
                              color: AppColor.divider,
                              borderRadius:
                                  BorderRadius.circular(AppDimens.medium)),
                        ),
                        AppDimens.small.width,
                        Text(
                          ('${listFastFoodController.listFastFood[listFastFoodController.item.value].price!} تومان')
                              .englishToPersion(),
                          style: AppTextTheme.labelMedium,
                        )
                      ],
                    ),
                    (AppDimens.height / 24).height,
                    // add to basket button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Stack(
                          alignment: Alignment.center,
                          children: [
                            SizedBox(
                              height: AppDimens.height / 18,
                              width: AppDimens.height / 18,
                            ),
                            Container(
                              height: AppDimens.height / 21,
                              width: AppDimens.height / 21,
                              decoration: const BoxDecoration(
                                  color: AppColor.bgBackGround,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 16,
                                        color: AppColor.lightGray,
                                        spreadRadius: 3,
                                        offset: Offset(0, 6)),
                                  ]),
                              child: Padding(
                                padding:
                                    const EdgeInsets.all(AppDimens.verySmall),
                                child: SvgPicture.asset(
                                  Assets.icons.bag,
                                  colorFilter: const ColorFilter.mode(
                                      AppColor.primary, BlendMode.srcIn),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 0,
                              right: 0,
                              child: Container(
                                height: AppDimens.medium,
                                width: AppDimens.medium,
                                decoration: const BoxDecoration(
                                  color: AppColor.primary,
                                  shape: BoxShape.circle,
                                ),
                                child: Center(
                                  child: Text(
                                    '3',
                                    style: AppTextTheme.bodySmall
                                        .copyWith(color: Colors.white),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                        AppElevatedButton(
                            //TODO add to basket
                            onPressed: () {},
                            height: AppDimens.height / 17,
                            width: AppDimens.width / 1.5,
                            style: AppButtonTheme.primaryBackGroundColor,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Icon(
                                  CupertinoIcons.add,
                                  color: Colors.white,
                                  size: 20,
                                ),
                                AppDimens.verySmall.width,
                                Text(AppString.addToBasket,
                                    style: AppTextTheme.labelLarge
                                        .copyWith(color: AppColor.light)),
                              ],
                            )),
                      ],
                    ),
                    AppDimens.large.height,
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
