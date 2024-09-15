import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/components/app_elevated_button.dart';
import 'package:pitza_mitza/components/app_header.dart';
import 'package:pitza_mitza/components/app_text_field.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_image.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/controllers/signup-controller.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/theme/app_button_theme.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';
import 'package:pitza_mitza/ui/views/login/login_page.dart';

// ignore: must_be_immutable
class SignUp extends StatelessWidget {
  SignUp({super.key});

  SignUpController signUpController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const AppHeader(),
              AppDimens.large.height,
              Image.asset(
                Assets.images.signupPicture.path,
                height: AppDimens.height / 3.2,
                width: AppDimens.width / 1.2,
              ),
              AppDimens.large.height,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: AppDimens.bodyMargin),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppString.buildAccount,
                      style: AppTextTheme.titleLarge
                          .copyWith(color: AppColor.title),
                    ),
                    AppDimens.large.height,
                    AppTextField(
                        controller: signUpController.phone,
                        obscureText: false,
                        keyboardType: TextInputType.number,
                        autofocus: false,
                        prefixIcon: AppImage.phoneIcon,
                        hintText: AppString.phoneNumber),
                    AppDimens.medium.height,
                    AppTextField(
                        controller: signUpController.password,
                        obscureText: true,
                        keyboardType: TextInputType.text,
                        autofocus: false,
                        prefixIcon: Assets.icons.lock,
                        hintText: AppString.choosePassword),
                    AppDimens.medium.height,
                    AppTextField(
                        controller: signUpController.firstName,
                        obscureText: false,
                        keyboardType: TextInputType.text,
                        autofocus: false,
                        prefixIcon: Assets.icons.user,
                        hintText: AppString.firstName),
                    AppDimens.medium.height,
                    AppTextField(
                        controller: signUpController.lastName,
                        obscureText: false,
                        keyboardType: TextInputType.text,
                        autofocus: false,
                        prefixIcon: Assets.icons.user,
                        hintText: AppString.lastName),
                    AppDimens.large.height,
                    AppElevatedButton(
                        onPressed: () {
                          signUpController.register();
                        },
                        height: AppDimens.height / 15,
                        width: AppDimens.width / 1.1,
                        style: AppButtonTheme.primaryBackGroundColor,
                        child: Text(
                          AppString.createAccount,
                          style: AppDimens.textTheme.labelLarge!
                              .copyWith(color: AppColor.light),
                        )),
                  ],
                ),
              ),
              AppDimens.small.height,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppString.haveYouCreatedAccountBefore,
                    style: AppTextTheme.bodyVerySmall,
                  ),
                  AppDimens.verySmall.width,
                  GestureDetector(
                    onTap: () {
                      Get.off(Login());
                    },
                    child: SizedBox(
                      height: AppDimens.height / 52,
                      child: Text(
                        AppString.enter,
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
              AppDimens.medium.height
            ],
          ),
        ),
      ),
    );
  }
}
