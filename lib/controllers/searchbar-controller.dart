import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/constants/app_api.dart';
import 'package:pitza_mitza/models/list-fast-food-model.dart';
import 'package:pitza_mitza/services/dio-services.dart';

class SearchBarController extends GetxController {
  late RxList<ListFastFoodModel> listSearch = RxList();
  TextEditingController searchController = TextEditingController();

  getSearchBarList() async {
    DioServices dioServices = DioServices();
    try {
      var response = await dioServices.getSearchList(
          AppApi.foodSearch, searchController.text);

      debugPrint('>>>>> ${response.data}');

      if (response.statusCode == 200) {
        response.data.forEach((element) {
          listSearch.add(ListFastFoodModel.fromjson(element));
        });
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
