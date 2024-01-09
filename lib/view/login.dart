import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/component/header.dart';
import 'package:pitza_mitza/constant/params.dart';
import 'package:pitza_mitza/constant/solid_color.dart';
import 'package:pitza_mitza/constant/strings.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/view/home_page.dart';
import 'package:pitza_mitza/view/signup.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              SizedBox(
                height: Params.height / 22.8,
              ),
              Image.asset(
                Assets.images.group.path,
                height: Params.height / 3.2,
                width: double.infinity,
              ),
              SizedBox(
                height: Params.height / 25.5,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Params.bodyMargin, right: Params.bodyMargin),
                child: Column(children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      Strings.enterAcconunt,
                      style: Params.textTheme.titleLarge!.copyWith(
                          color: const Color.fromARGB(255, 44, 44, 46)),
                    ),
                  ),
                  SizedBox(
                    height: Params.height / 35.1,
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
                          hintText: 'نام کاربری',
                          hintStyle: Params.textTheme.bodyLarge!.copyWith(
                            color: const Color.fromARGB(255, 44, 44, 46),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: Params.height / 52,
                  ),
                  SizedBox(
                    height: Params.height / 15,
                    //TODO: TextField Controller
                    child: TextField(
                      cursorColor: SolidColor.darkColor,
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.fromLTRB(8, 16, 16, 16),
                            child: SvgPicture.asset(
                              Assets.icons.lock,
                            ),
                          ),
                          hintText: 'رمز عبور',
                          hintStyle: Params.textTheme.bodyLarge!.copyWith(
                            color: const Color.fromARGB(255, 44, 44, 46),
                          )),
                    ),
                  ),
                  SizedBox(
                    height: Params.height / 24,
                  ),
                  ElevatedButton(
                      //TODO: Enter Button
                      onPressed: () {
                        Get.offAll(const HomePage());
                      },
                      child: Text(
                        Strings.enter,
                        style: Params.textTheme.labelLarge!
                            .copyWith(color: SolidColor.secondaryColor),
                      )),
                ]),
              ),
              SizedBox(
                height: Params.height / 52,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'هنوز ثبت نام نکردی ؟ ',
                    style: Params.textTheme.bodySmall!
                        .copyWith(fontWeight: FontWeight.w300),
                  ),
                  SizedBox(
                    width: Params.height / 104,
                  ),
                  GestureDetector(
                    //TODO: Register Text
                    onTap: () {
                      Get.off(const SignUp());
                    },
                    child: SizedBox(
                      height: Params.height / 52,
                      width: Params.width / 12,
                      child: Text(
                        'ثبت نام',
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
              SizedBox(
                height: Params.height / 52,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: Params.width / 16, right: Params.width / 16),
                child: Row(
                  children: [
                    Container(
                      height: 1.2,
                      width: Params.width / 2.8,
                      decoration: const BoxDecoration(
                        color: SolidColor.darkGrayColor,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: Params.width / 48, right: Params.width / 48),
                      child: Text(
                        'ورود توسط',
                        style: Params.textTheme.bodySmall!
                            .copyWith(color: SolidColor.darkGrayColor),
                      ),
                    ),
                    Container(
                      height: 1.2,
                      width: Params.width / 2.8,
                      decoration: const BoxDecoration(
                        color: SolidColor.darkGrayColor,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: Params.height / 52,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset(Assets.icons.facebook),
                  SizedBox(
                    width: Params.height / 52,
                  ),
                  SvgPicture.asset(Assets.icons.x),
                  SizedBox(
                    width: Params.height / 52,
                  ),
                  SvgPicture.asset(Assets.icons.google),
                ],
              ),
              SizedBox(
                height: Params.height / 35,
              )
            ],
          ),
        ),
      ),
    );
  }
}
