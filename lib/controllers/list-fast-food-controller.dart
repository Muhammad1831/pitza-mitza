import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/constants/app_api.dart';
import 'package:pitza_mitza/models/list-fast-food-model.dart';
import 'package:pitza_mitza/services/dio-services.dart';

class ListFastFoodController extends GetxController {
  RxList<ListFastFoodModel> listFastFood = RxList();
  RxInt item = RxInt(-1);

  @override
  onInit() {
    super.onInit();
    getListFastFood(1);
  }

  getListFastFood(int foodCategory) async {
    listFastFood.clear();
    // debugPrint('>>>>>>>${AppDimens.height.toString()}');
    // debugPrint('>>>>>>>${AppDimens.width.toString()}');
    try {
      var response = await DioServices()
          .getListFastFood(AppApi.foodListCategory, foodCategory);

      if (response.statusCode == 200) {
        response.data.forEach((element) {
          listFastFood.add(ListFastFoodModel.fromjson(element));
        });
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
