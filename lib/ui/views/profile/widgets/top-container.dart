import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';

// ignore: must_be_immutable
class TopContainer extends StatelessWidget {
  TopContainer({
    super.key,
  });

  RxBool light = true.obs;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
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
                          Assets.icons.iconCardOutline,
                          height: 24,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'کارت بانکی',
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
                          Assets.icons.fluentGlobeLocation24Regular,
                          height: 24,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'آدرس من',
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
                height: AppDimens.large,
                width: AppDimens.width / 1.25,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(
                          Assets.icons.carbonNotification,
                          height: 24,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          'اعلان ها',
                          style: AppDimens.textTheme.bodyLarge!
                              .copyWith(color: AppColor.darkGray),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimens.large,
                      width: 40,
                      child: FittedBox(
                        fit: BoxFit.fill,
                        child: CupertinoSwitch(
                            value: light.value,
                            activeColor: Colors.red,
                            onChanged: (value) {
                              light.value = value;
                            }),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
