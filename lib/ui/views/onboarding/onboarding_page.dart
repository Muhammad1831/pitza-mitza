import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/components/app_elevated_button.dart';
import 'package:pitza_mitza/components/app_header.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/theme/app_button_theme.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';
import 'package:pitza_mitza/ui/views/login/login_page.dart';
import 'package:pitza_mitza/ui/views/signup/signup_page.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const AppHeader(),
            (AppDimens.height / 14).height,
            Image.asset(
              Assets.images.pizzaOnboarding.path,
              height: AppDimens.height / 3.2,
            ),
            (AppDimens.height / 21).height,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: AppDimens.bodyMargin),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: TextSpan(children: [
                      TextSpan(
                          text: '“ لذت یک تجربه خوشمزه با',
                          style: AppTextTheme.displayMedium),
                      TextSpan(
                          text: ' پیتزا میتزا .\n',
                          style: AppTextTheme.displayMedium
                              .copyWith(color: AppColor.primary)),
                      TextSpan(
                          text: ' از کیفیت بالا تا ارسال رایگان و تحویل سریع “',
                          style: AppTextTheme.displayMedium),
                    ]),
                  ),
                  AppDimens.veryLarge.height,
                  SizedBox(
                    width: AppDimens.width / 1.2,
                    child: Text(
                      AppString.descriptionOnBoarding,
                      style: AppTextTheme.bodyMedium
                          .copyWith(color: AppColor.darkGray),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  (AppDimens.height / 16).height,
                  AppElevatedButton(
                      onPressed: () {
                        Get.to(SignUp());
                      },
                      height: AppDimens.height / 15,
                      width: AppDimens.width / 1.1,
                      style: AppButtonTheme.primaryBackGroundColor,
                      child: Text(AppString.buildAccount,
                          style: AppDimens.textTheme.labelLarge!
                              .copyWith(color: AppColor.light))),
                  AppDimens.large.height,
                  OutlinedButton(
                    onPressed: () {
                      Get.to(Login());
                    },
                    style: AppButtonTheme.noBackGroundColor.copyWith(
                        fixedSize: MaterialStateProperty.all(Size(
                      AppDimens.width / 1.1,
                      AppDimens.height / 15,
                    ))),
                    child: const Text(AppString.enter),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
