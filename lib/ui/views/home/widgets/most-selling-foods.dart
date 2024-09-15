import 'package:flutter/material.dart';
import 'package:pitza_mitza/components/app_most_selling_Item.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';

class MostSellingFoods extends StatelessWidget {
  const MostSellingFoods({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimens.height / 3.2,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 4,
          itemBuilder: (context, index) {
            return const AppMostSellingItem();
          }),
    );
  }
}
