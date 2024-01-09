import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/component/header.dart';
import 'package:pitza_mitza/constant/params.dart';
import 'package:pitza_mitza/constant/solid_color.dart';
import 'package:pitza_mitza/constant/strings.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/view/login.dart';
import 'package:pitza_mitza/view/signup.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const Header(),
            SizedBox(
              height: Params.height / 14,
            ),
            Image.asset(
              Assets.images.pizzaOnboarding.path,
              height: Params.height / 3.2,
            ),
            SizedBox(
              height: Params.height / 21,
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                  Params.bodyMargin, 0, Params.bodyMargin, 0),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: '“ لذت یک تجربه خوشمزه با',
                            style: Params.textTheme.displayMedium),
                        TextSpan(
                            text: ' پیتزا میتزا .\n',
                            style: Params.textTheme.displayMedium!
                                .copyWith(color: SolidColor.primaryColor)),
                        TextSpan(
                            text:
                                ' از کیفیت بالا تا ارسال رایگان و تحویل سریع “',
                            style: Params.textTheme.displayMedium),
                      ]),
                    ),
                  ),
                  SizedBox(
                    height: Params.height / 35.1,
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      width: Params.width / 1.2,
                      child: Text(
                        Strings.bodyOnBoarding,
                        style: Params.textTheme.bodyLarge!
                            .copyWith(color: SolidColor.darkGrayColor),
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Params.height / 14,
                  ),
                  ElevatedButton(
                    //TODO: Create Account Button
                    onPressed: () {
                      Get.to(const SignUp());
                    },
                    style: Params.elevatedButtonThemeData.style,
                    child: Text(Strings.createAccount,
                        style: Params.textTheme.labelLarge!
                            .copyWith(color: SolidColor.secondaryColor)),
                  ),
                  SizedBox(
                    height: Params.height / 40,
                  ),
                  OutlinedButton(
                    //TODO: Enter Button
                    onPressed: () {
                      Get.to(const Login());
                    },
                    style: ButtonStyle(
                        fixedSize: MaterialStateProperty.all(
                            Size(Params.width / 1.1, Params.height / 15)),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10))),
                        side: const MaterialStatePropertyAll(
                            BorderSide(color: SolidColor.primaryColor)),
                        textStyle: MaterialStatePropertyAll(Params
                            .textTheme.labelMedium!
                            .copyWith(color: SolidColor.primaryColor))),
                    child: const Text(Strings.enter),
                  ),
                  SizedBox(
                    height: Params.height / 26,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
