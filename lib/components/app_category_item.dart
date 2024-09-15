import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/controllers/category-controller.dart';
import 'package:pitza_mitza/controllers/list-fast-food-controller.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';

class AppCategoryItem extends StatelessWidget {
  const AppCategoryItem({
    super.key,
    required this.item,
    required this.categoryController,
    required this.listFastFoodController,
  });

  final int item;
  final CategoryController categoryController;
  final ListFastFoodController listFastFoodController;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Padding(
        padding: const EdgeInsets.only(left: AppDimens.medium),
        child: GestureDetector(
          onTap: () {
            categoryController.tabIndex.value = item;
            listFastFoodController.getListFastFood(item + 1);
          },
          child: Container(
            height: 30,
            decoration: BoxDecoration(
                color: categoryController.tabIndex.value == item
                    ? AppColor.categoryItemSelected
                    : AppColor.categoryItemUnSelected,
                borderRadius: BorderRadius.circular(AppDimens.large)),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(
                  AppDimens.medium, 4, AppDimens.verySmall, 4),
              child: Row(
                children: [
                  Image.asset(Assets.images.emojionePizza.path),
                  AppDimens.verySmall.width,
                  Text(
                    categoryController.categoryModel[item].title!,
                    style: categoryController.tabIndex.value == item
                        ? AppTextTheme.labelMedium.copyWith(color: Colors.white)
                        : AppTextTheme.labelMedium,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
