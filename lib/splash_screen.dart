import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pitza_mitza/constant/params.dart';
import 'package:pitza_mitza/constant/solid_color.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:pitza_mitza/view/onboarding_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    Future.delayed(const Duration(seconds: 2))
        .then((value) => Get.off(const OnBoardingPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  Assets.images.logo.path,
                  height: Params.height / 10,
                ),
                Text(
                  'پیتزا میتزا',
                  style: Params.textTheme.displayMedium!
                      .copyWith(color: SolidColor.primaryColor, fontSize: 24),
                )
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            SpinKitThreeInOut(
              size: Params.height / 28,
              delay: const Duration(microseconds: 500),
              itemBuilder: (context, item) {
                return DecoratedBox(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: item.isEven
                            ? SolidColor.primaryColor
                            : SolidColor.bgColor));
              },
            )
          ],
        ),
      ),
    );
  }
}
