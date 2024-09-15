import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:pitza_mitza/components/app_product_wide_item.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/controllers/list-fast-food-controller.dart';
import 'package:pitza_mitza/controllers/searchbar-controller.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/models/list-fast-food-model.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';
import 'package:pitza_mitza/ui/views/product/product_page.dart';

// ignore: must_be_immutable
class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  ListFastFoodController listFastFoodController =
      Get.put(ListFastFoodController());
  SearchBarController searchBarController = Get.put(SearchBarController());
  RxList<ListFastFoodModel> listSearch = RxList();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Obx(
              () => Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimens.bodyMargin),
                child: Column(
                  children: [
                    AppDimens.veryLarge.height,
                    AnimatedContainer(
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
                      child: TextField(
                        onChanged: (value) {
                          if (searchBarController
                              .searchController.text.isNotEmpty) {
                            listSearch.clear();
                            listFastFoodController.listFastFood.clear();
                            searchBarController.getSearchBarList();
                            listSearch = searchBarController.listSearch;
                            listFastFoodController.listFastFood =
                                searchBarController.listSearch;
                          } else if (searchBarController
                              .searchController.text.isEmpty) {
                            listSearch.clear();
                            listFastFoodController.listFastFood.clear();
                          }
                        },
                        textInputAction: TextInputAction.search,
                        autofocus: true,
                        controller: searchBarController.searchController,
                        textAlign: TextAlign.right,
                        decoration: InputDecoration(
                            hintText: AppString.search,
                            hintStyle: AppTextTheme.bodyMedium,
                            contentPadding:
                                const EdgeInsets.all(AppDimens.verySmall),
                            prefixIcon: const Icon(
                              IconlyLight.search,
                              color: AppColor.darkGray,
                            ),
                            suffixIcon: const Icon(
                              IconlyLight.filter,
                              color: AppColor.dark,
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: AppColor.light),
                                borderRadius:
                                    BorderRadius.circular(AppDimens.medium)),
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: AppColor.light),
                                borderRadius:
                                    BorderRadius.circular(AppDimens.medium))),
                      ),
                    ),
                    AppDimens.veryLarge.height,
                    ListView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        itemCount: searchBarController.listSearch.length,
                        itemBuilder: (context, index) {
                          return AppProductWideItem(
                              onTap: () {
                                listFastFoodController.item.value = index;
                                Get.to(ProductPage());
                              },
                              image: Assets.images.potato.path,
                              name: listSearch[index].food!.name!,
                              description: listSearch[index].description!,
                              price: listSearch[index].price!);
                        })
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
