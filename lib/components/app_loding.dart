import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_color.dart';

class AppLoding extends StatelessWidget {
  const AppLoding({super.key});

  @override
  Widget build(BuildContext context) {
    return SpinKitThreeInOut(
      size: AppDimens.height / 28,
      delay: const Duration(microseconds: 500),
      itemBuilder: (context, item) {
        return DecoratedBox(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: item.isEven ? AppColor.primary : AppColor.secondary));
      },
    );
  }
}
