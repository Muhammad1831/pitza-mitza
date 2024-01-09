import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pitza_mitza/component/header.dart';
import 'package:pitza_mitza/constant/params.dart';
import 'package:pitza_mitza/constant/solid_color.dart';
import 'package:pitza_mitza/constant/strings.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/view/login.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              SizedBox(
                height: Params.height / 30,
              ),
              Image.asset(
                Assets.images.signupPicture.path,
                height: Params.height / 2.8,
                width: Params.width / 1.2,
              ),
              SizedBox(
                height: Params.height / 32,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Params.bodyMargin, right: Params.bodyMargin),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        Strings.createAccount,
                        style: Params.textTheme.titleLarge!.copyWith(
                            color: const Color.fromARGB(255, 44, 44, 46)),
                      ),
                    ),
                    SizedBox(
                      height: Params.height / 40,
                    ),
                    SizedBox(
                      height: Params.height / 15,
                      //TODO: TextField Controller
                      child: TextField(
                        cursorColor: SolidColor.darkColor,
                        decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 16, 16, 16),
                              child: SvgPicture.asset(Assets.icons.user),
                            ),
                            hintText: 'شماره تلفن',
                            hintStyle: Params.textTheme.bodyLarge!.copyWith(
                              color: const Color.fromARGB(255, 44, 44, 46),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: Params.height / 54,
                    ),
                    SizedBox(
                      height: Params.height / 15,
                      //TODO: TextField Controller
                      child: TextField(
                        cursorColor: SolidColor.darkColor,
                        decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 16, 16, 16),
                              child: SvgPicture.asset(Assets.icons.user),
                            ),
                            hintText: 'ایمیل (اختیاری)',
                            hintStyle: Params.textTheme.bodyLarge!.copyWith(
                              color: const Color.fromARGB(255, 44, 44, 46),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: Params.height / 54,
                    ),
                    SizedBox(
                      height: Params.height / 15,
                      //TODO: TextField Controller
                      child: TextField(
                        cursorColor: SolidColor.darkColor,
                        decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.fromLTRB(8, 16, 16, 16),
                              child: SvgPicture.asset(Assets.icons.user),
                            ),
                            hintText: 'انتخاب رمز عبور',
                            hintStyle: Params.textTheme.bodyLarge!.copyWith(
                              color: const Color.fromARGB(255, 44, 44, 46),
                            )),
                      ),
                    ),
                    SizedBox(
                      height: Params.height / 40,
                    ),
                    ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          'ایجاد حساب کاربری',
                          style: Params.textTheme.labelLarge!
                              .copyWith(color: SolidColor.secondaryColor),
                        )),
                  ],
                ),
              ),
              SizedBox(
                height: Params.height / 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'قبلا حساب کاربری ساخته بودی ؟',
                    style: Params.textTheme.bodySmall!
                        .copyWith(fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: Params.height / 104,
                  ),
                  GestureDetector(
                    //TODO: Enter Text
                    onTap: () {
                      Get.off(const Login());
                    },
                    child: SizedBox(
                      height: Params.height / 52,
                      width: Params.width / 9,
                      child: Text(
                        'وارد شوید',
                        style: Params.textTheme.bodySmall!.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: SolidColor.primaryColor,
                            color: SolidColor.primaryColor,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
