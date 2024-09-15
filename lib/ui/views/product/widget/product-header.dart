import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/components/app_back_icon.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';

class ProductHeader extends StatelessWidget {
  const ProductHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: AppDimens.medium,
      left: AppDimens.medium,
      right: AppDimens.medium,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          AppBackIcon(
              onTap: () {
                Get.back();
              },
              borderColor: AppColor.light,
              iconColor: AppColor.light),
          Container(
            height: AppDimens.height / 21,
            width: AppDimens.height / 21,
            decoration: BoxDecoration(
              border: Border.all(color: AppColor.light, width: 1),
              shape: BoxShape.circle,
            ),
            child: Center(child: SvgPicture.asset(Assets.icons.heart)),
          ),
        ],
      ),
    );
  }
}
