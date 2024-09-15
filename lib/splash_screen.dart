import 'package:flutter/material.dart';
import 'package:pitza_mitza/components/app_loding.dart';
import 'package:pitza_mitza/components/extensions.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/controllers/login-controller.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/theme/app_text_theme.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2))
        .then((value) => LoginController().login());
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
                  height: AppDimens.height / 10,
                ),
                Text(
                  AppString.pitzaMitza,
                  style: AppTextTheme.displayLarge
                      .copyWith(color: AppColor.primary),
                )
              ],
            ),
            AppDimens.veryLarge.height,
            const AppLoding(),
          ],
        ),
      ),
    );
  }
}
