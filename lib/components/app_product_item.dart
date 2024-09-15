import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/controllers/list-fast-food-controller.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';
import 'package:pitza_mitza/ui/views/product/product_page.dart';

class AppProductItem extends StatelessWidget {
  const AppProductItem({
    super.key,
    required this.item,
    required this.listFastFoodController,
  });

  final int item;
  final ListFastFoodController listFastFoodController;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        listFastFoodController.item.value = item;
        Get.to(ProductPage());
      },
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: AppDimens.large),
            child: SizedBox(
              height: AppDimens.height / 4.3,
              width: AppDimens.width / 2.5,
            ),
          ),
          Positioned(
            bottom: 8,
            child: Container(
              height: AppDimens.height / 5.2,
              width: AppDimens.width / 2.5,
              decoration: BoxDecoration(
                  color: AppColor.productItemBackGround,
                  borderRadius: BorderRadius.circular(AppDimens.large),
                  boxShadow: [
                    BoxShadow(
                        color: AppColor.shadow.withOpacity(0.8),
                        spreadRadius: 0,
                        blurRadius: 2,
                        offset: const Offset(0, 4)),
                  ]),
            ),
          ),
          Positioned(
            top: -(AppDimens.large),
            child: Image.asset(
              Assets.images.hamburgerroyal.path,
              height: AppDimens.width / 2.8,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
              top: AppDimens.height / 7.5,
              child: Column(
                children: [
                  Text(
                    listFastFoodController.listFastFood[item].food!.name!,
                    style: AppTextTheme.titleSmall,
                  ),
                  (AppDimens.small / 2).height,
                  SizedBox(
                    width: AppDimens.width / 3.5,
                    child: Text(
                      listFastFoodController
                          .listFastFood[item].food!.description!,
                      style: AppTextTheme.bodyVerySmall,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  AppDimens.verySmall.height,
                  SizedBox(
                    width: AppDimens.width / 3.5,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '${(listFastFoodController.listFastFood[item].price!.toString()).englishToPersion()} تومان',
                          style: AppTextTheme.labelSmall
                              .copyWith(fontWeight: FontWeight.w700),
                        ),
                        Container(
                            height: AppDimens.veryLarge,
                            width: AppDimens.veryLarge,
                            decoration: const BoxDecoration(
                                color: AppColor.dark, shape: BoxShape.circle),
                            child: const Icon(
                              Icons.add,
                              color: AppColor.light,
                            )),
                      ],
                    ),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
