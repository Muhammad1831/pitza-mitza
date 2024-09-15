import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/controllers/logout-controller.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';

class DownContainer extends StatelessWidget {
  const DownContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        LogOutController().logout();
      },
      child: Container(
        height: AppDimens.height / 21.1,
        width: AppDimens.width / 1.1,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 4,
                blurRadius: 8,
              ),
            ]),
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SizedBox(
            height: 24,
            width: AppDimens.width / 1.25,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  Assets.icons.majesticonsLogoutLine,
                  height: 24,
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  'خروج از حساب کاربری',
                  style: AppDimens.textTheme.bodyLarge!
                      .copyWith(color: AppColor.darkGray),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
