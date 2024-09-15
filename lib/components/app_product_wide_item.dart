import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';

// ignore: must_be_immutable
class AppProductWideItem extends StatelessWidget {
  AppProductWideItem(
      {super.key,
      required this.onTap,
      required this.image,
      required this.name,
      required this.description,
      required this.price});

  void Function() onTap;
  final String image;
  final String name;
  final String description;
  final int price;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: AppDimens.height / 10.5,
            decoration: BoxDecoration(
                color: AppColor.light,
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [
                  BoxShadow(
                      offset: Offset(0, 0),
                      color: AppColor.lightGray,
                      blurRadius: 10,
                      spreadRadius: 1,
                      blurStyle: BlurStyle.normal)
                ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
              left: AppDimens.veryLarge, right: AppDimens.verySmall),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                image,
                height: AppDimens.height / 9,
                fit: BoxFit.cover,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: AppTextTheme.labelMedium,
                  ),
                  Text(description, style: AppTextTheme.bodyVerySmall)
                ],
              ),
              AppDimens.medium.width,
              Text(
                '$price ءتءء'.englishToPersion(),
                style:
                    AppTextTheme.titleSmall.copyWith(color: AppColor.primary),
              )
            ],
          ),
        ),
      ],
    );
  }
}
