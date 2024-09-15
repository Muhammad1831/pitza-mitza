import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/components/app_category_item.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/controllers/category-controller.dart';
import 'package:pitza_mitza/controllers/list-fast-food-controller.dart';

// ignore: must_be_immutable
class FastFoodCategory extends StatelessWidget {
  FastFoodCategory({
    super.key,
  });

  CategoryController categoryController = Get.put(CategoryController());
  ListFastFoodController listFastFoodController =
      Get.put(ListFastFoodController());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => SizedBox(
          height: 30,
          width: AppDimens.width,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryController.categoryModel.length,
              itemBuilder: (context, item) {
                return AppCategoryItem(
                    item: item,
                    categoryController: categoryController,
                    listFastFoodController: listFastFoodController);
              })),
    );
  }
}
