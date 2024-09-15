import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/components/app_elevated_button.dart';
import 'package:pitza_mitza/components/app_header.dart';
import 'package:pitza_mitza/components/app_text_field.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/controllers/login-controller.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/theme/app_button_theme.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';
import 'package:pitza_mitza/ui/views/signup/signup_page.dart';

// ignore: must_be_immutable
class Login extends StatelessWidget {
  Login({super.key});

  LoginController loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const AppHeader(),
              (AppDimens.height / 24).height,
              Image.asset(
                Assets.images.group.path,
                height: AppDimens.height / 3.2,
                width: double.maxFinite,
              ),
              (AppDimens.height / 26).height,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimens.bodyMargin),
                child: Column(children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(AppString.enterAcconunt,
                        style: AppTextTheme.titleLarge),
                  ),
                  AppDimens.veryLarge.height,
                  AppTextField(
                    obscureText: false,
                    controller: loginController.phoneTextEditingController,
                    keyboardType: TextInputType.number,
                    autofocus: false,
                    prefixIcon: Assets.icons.user,
                    hintText: AppString.phoneNumber,
                  ),
                  AppDimens.medium.height,
                  AppTextField(
                    obscureText: true,
                    controller: loginController.passwordTextEditingController,
                    autofocus: false,
                    prefixIcon: Assets.icons.lock,
                    hintText: AppString.password,
                  ),
                  (AppDimens.height / 24).height,
                  AppElevatedButton(
                      onPressed: () {
                        loginController.verify();
                      },
                      height: AppDimens.height / 15,
                      width: AppDimens.width / 1.1,
                      style: AppButtonTheme.primaryBackGroundColor,
                      child: Text(
                        AppString.enter,
                        style: AppTextTheme.labelLarge
                            .copyWith(color: AppColor.light),
                      )),
                ]),
              ),
              AppDimens.medium.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppString.notRegisteredYet,
                    style: AppTextTheme.bodyVerySmall,
                  ),
                  AppDimens.verySmall.width,
                  GestureDetector(
                    onTap: () {
                      Get.off(SignUp());
                    },
                    child: SizedBox(
                      height: AppDimens.large,
                      child: Text(
                        AppString.register,
                        style: AppTextTheme.bodyVerySmall.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: AppColor.primary,
                            color: AppColor.primary,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
              AppDimens.large.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1.2,
                    width: AppDimens.width / 3,
                    decoration: const BoxDecoration(
                      color: AppColor.divider,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: AppDimens.medium, right: AppDimens.medium),
                    child: Text(
                      AppString.enterBy,
                      style: AppTextTheme.bodyVerySmall
                          .copyWith(color: AppColor.darkGray),
                    ),
                  ),
                  Container(
                    height: 1.2,
                    width: AppDimens.width / 3,
                    decoration: const BoxDecoration(
                      color: AppColor.divider,
                    ),
                  ),
                ],
              ),
              AppDimens.veryLarge.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.facebook),
                  AppDimens.medium.width,
                  SvgPicture.asset(Assets.icons.x),
                  AppDimens.medium.width,
                  SvgPicture.asset(Assets.icons.google),
                ],
              ),
              AppDimens.veryLarge.height
            ],
          ),
        ),
      ),
    );
  }
}
