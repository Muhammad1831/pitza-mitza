import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

// ignore: must_be_immutable
class BannerSlider extends StatelessWidget {
  BannerSlider({
    super.key,
  });

  CarouselController controller = CarouselController();

  final ValueNotifier<int> currentIndex = ValueNotifier<int>(0);

  List<String> item = [
    Assets.images.pizzaPicture1.path,
    Assets.images.pizza.path,
    Assets.images.banner4.path,
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: AppDimens.small),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          SizedBox(
              height: AppDimens.height / 5.6,
              width: double.maxFinite,
              child: CarouselSlider(
                carouselController: controller,
                items: item
                    .map((element) => Padding(
                          padding:
                              const EdgeInsets.only(left: AppDimens.verySmall),
                          child: Container(
                            width: AppDimens.width,
                            decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.circular(AppDimens.medium),
                                image: DecorationImage(
                                  image: AssetImage(element),
                                  fit: BoxFit.cover,
                                )),
                          ),
                        ))
                    .toList(),
                options: CarouselOptions(
                  autoPlay: true,
                  viewportFraction: 1,
                  autoPlayInterval: const Duration(seconds: 5),
                  autoPlayAnimationDuration: const Duration(seconds: 2),
                  autoPlayCurve: Curves.fastLinearToSlowEaseIn,
                  onPageChanged: (index, reason) {
                    currentIndex.value = index;
                  },
                ),
              )),
          Positioned(
              top: AppDimens.veryLarge,
              right: AppDimens.veryLarge,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    AppString.specialOffer,
                    style: AppTextTheme.displayLarge
                        .copyWith(color: AppColor.light),
                  ),
                  (AppDimens.verySmall / 2).height,
                  Text(
                    'پیتزا ، بهترین طعم و بهترین قیمـت',
                    style: AppTextTheme.displaySmall
                        .copyWith(color: AppColor.light),
                  ),
                  AppDimens.medium.height,
                  Container(
                    height: AppDimens.height / 24,
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppDimens.verySmall),
                        border: Border.all(color: AppColor.light, width: 2)),
                    child: Padding(
                      padding: const EdgeInsets.all(AppDimens.verySmall),
                      child: Row(children: [
                        Text(
                          AppString.product,
                          style: AppTextTheme.bodyMedium.copyWith(
                              color: AppColor.light,
                              fontWeight: FontWeight.bold),
                        ),
                        AppDimens.verySmall.height,
                        const Icon(
                          IconlyLight.arrow_left,
                          color: AppColor.light,
                          size: 16,
                        )
                      ]),
                    ),
                  ),
                ],
              )),
          Positioned(
            bottom: 8.0,
            child: ValueListenableBuilder<int>(
              valueListenable: currentIndex,
              builder: (context, value, child) {
                return SmoothPageIndicator(
                  effect: const ExpandingDotsEffect(
                    dotHeight: 10,
                    dotWidth: 10,
                    activeDotColor: AppColor.smoothPageIndicator,
                    expansionFactor: 2,
                    spacing: 4,
                  ),
                  controller: PageController(initialPage: value),
                  count: item.length,
                  axisDirection: Axis.horizontal,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
