import 'package:flutter/material.dart';
import 'package:pitza_mitza/constant/params.dart';
import 'package:pitza_mitza/constant/solid_color.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(right: Params.width / 70, top: Params.bodyMargin),
      child: Row(
        children: [
          Image.asset(
            Assets.images.logo.path,
            height: Params.height / 16,
          ),
          Text(
            'پیتزا میتزا',
            style: Params.textTheme.displayMedium!
                .copyWith(color: SolidColor.primaryColor),
          )
        ],
      ),
    );
  }
}
