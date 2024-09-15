import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:iconly/iconly.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/views/search/search_page.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(AppDimens.large, AppDimens.small,
            AppDimens.large, AppDimens.verySmall),
        child: SizedBox(
          height: 50,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: AppColor.primary),
              ),
              Row(
                children: [
                  const Icon(
                    IconlyLight.location,
                    color: AppColor.primary,
                    size: 18,
                  ),
                  (AppDimens.verySmall / 2).width,
                  SizedBox(
                    height: AppDimens.veryLarge,
                    width: AppDimens.width / 5,
                    child: Text(
                      'ایران,تهران,خیابان ایمان',
                      style: AppDimens.textTheme.labelMedium,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  GestureDetector(
                    //TODO: ArrowBottom
                    onTap: () {},
                    child: SvgPicture.asset(
                      Assets.icons.arrowbottom,
                    ),
                  )
                ],
              ),
              GestureDetector(
                onTap: () {
                  Get.to(SearchPage());
                },
                child: Container(
                  height: 45,
                  width: 45,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                          color: AppColor.borderSearchIcon, width: 1)),
                  child: const Icon(
                    IconlyLight.search,
                    size: 24,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size(AppDimens.width, 60);
}
