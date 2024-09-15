import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/constants/app_api.dart';
import 'package:pitza_mitza/models/category-model.dart';
import 'package:pitza_mitza/services/dio-services.dart';

class CategoryController extends GetxController {
  late RxList<CategoryModel> categoryModel = RxList();
  late RxBool loding = false.obs;
  RxInt tabIndex = 0.obs;

  @override
  onInit() {
    super.onInit();
    getCategory();
  }

  getCategory() async {
    loding.value = true;
    try {
      var response = await DioServices().getCategory(AppApi.foodCategory);
      debugPrint(response.toString());

      if (response.statusCode == 200) {
        response.data.forEach((element) {
          categoryModel.add(CategoryModel.fromjson(element));
        });
        loding.value = false;
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
