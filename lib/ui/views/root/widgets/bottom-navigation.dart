import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:iconly/iconly.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation(
      {super.key, required this.pageIndex, required this.route});

  final RxInt pageIndex;
  final List<int> route;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimens.height / 15,
      width: AppDimens.width,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: AppColor.shadow.withOpacity(0.4),
          spreadRadius: 10,
          blurRadius: 10,
          offset: const Offset(0, 3),
        ),
        BoxShadow(
          color: AppColor.shadow.withOpacity(0.2),
          spreadRadius: 15,
          blurRadius: 25,
          offset: const Offset(0, 3),
        ),
        BoxShadow(
          color: AppColor.shadow.withOpacity(0.2),
          spreadRadius: 15,
          blurRadius: 25,
          offset: const Offset(0, 3),
        ),
      ]),
      child: BottomAppBar(
        elevation: 0,
        padding: const EdgeInsets.only(
            left: AppDimens.verySmall, right: AppDimens.verySmall),
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        color: AppColor.bottomNavBackGround,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                if (pageIndex.value != 0) {
                  pageIndex.value = 0;
                  route.add(pageIndex.value);
                }
              },
              icon: Icon(
                pageIndex.value == 0 ? IconlyBold.home : IconlyLight.home,
                color: AppColor.iconSelected,
                size: 28,
              ),
            ),
            AppDimens.veryLarge.width,
            IconButton(
              enableFeedback: false,
              onPressed: () {
                if (pageIndex.value != 1) {
                  pageIndex.value = 1;
                  route.add(pageIndex.value);
                }
              },
              icon: Icon(
                pageIndex.value == 1 ? IconlyBold.heart : IconlyLight.heart,
                color: AppColor.iconSelected,
                size: 28,
              ),
            ),
            (AppDimens.width / 3.5).width,
            IconButton(
                enableFeedback: false,
                onPressed: () {
                  if (pageIndex.value != 2) {
                    pageIndex.value = 2;
                    route.add(pageIndex.value);
                  }
                  },
                icon: Icon(
                  pageIndex.value == 2
                      ? IconlyBold.discovery
                      : IconlyLight.discovery,
                  color: AppColor.iconSelected,
                  size: 28,
                )),
            AppDimens.veryLarge.width,
            IconButton(
              enableFeedback: false,
              onPressed: () {
                if (pageIndex.value != 3) {
                  pageIndex.value = 3;
                  route.add(pageIndex.value);
                }
              },
              icon: Icon(
                pageIndex.value == 3 ? IconlyBold.profile : IconlyLight.profile,
                color: AppColor.iconSelected,
                size: 28,
              ),
            )
          ],
        ),
      ),
    );
  }
}
