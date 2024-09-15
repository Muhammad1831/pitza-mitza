import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/components/app_product_item.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/controllers/list-fast-food-controller.dart';

// ignore: must_be_immutable
class ListFastFood extends StatelessWidget {
  ListFastFood({super.key});

  ListFastFoodController listFastFoodController =
      Get.put(ListFastFoodController());

  @override
  Widget build(BuildContext context) {
    return Container(
        height: AppDimens.height / 4.2,
        width: AppDimens.width,
        decoration: const BoxDecoration(color: AppColor.scaffoldBackGround),
        child: Obx(() {
          return ListView.builder(
              physics: const ScrollPhysics(parent: BouncingScrollPhysics()),
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
              itemCount: listFastFoodController.listFastFood.length,
              itemBuilder: (context, item) {
                return AppProductItem(
                    item: item, listFastFoodController: listFastFoodController);
              });
        }));
  }
}
