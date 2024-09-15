import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
        padding: const EdgeInsets.only(top: 20, bottom: 20),
        child: Column(
          children: [
            SizedBox(
              height: 24,
              width: AppDimens.width / 1.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.icons.biMenuApp,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'درباره ما',
                        style: AppDimens.textTheme.bodyLarge!
                            .copyWith(color: AppColor.darkGray),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    Assets.icons.bottomMore,
                    height: 24,
                  )
                ],
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 205, 205, 205),
              endIndent: 22,
              indent: 22,
              thickness: 1,
            ),
            SizedBox(
              height: 24,
              width: AppDimens.width / 1.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.icons.wpfFaq,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'سوالات متداول',
                        style: AppDimens.textTheme.bodyLarge!
                            .copyWith(color: AppColor.darkGray),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    Assets.icons.bottomMore,
                    height: 24,
                  )
                ],
              ),
            ),
            const Divider(
              color: Color.fromARGB(255, 205, 205, 205),
              endIndent: 22,
              indent: 22,
              thickness: 1,
            ),
            SizedBox(
              height: 24,
              width: AppDimens.width / 1.25,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset(
                        Assets.icons.materialSymbolsLightHelpOutline,
                        height: 24,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      Text(
                        'راهنما',
                        style: AppDimens.textTheme.bodyLarge!
                            .copyWith(color: AppColor.darkGray),
                      ),
                    ],
                  ),
                  SvgPicture.asset(
                    Assets.icons.bottomMore,
                    height: 24,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
