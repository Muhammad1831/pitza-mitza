import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_storage/get_storage.dart';
import 'package:iconly/iconly.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/views/profile/widgets/custom-clippath-profile.dart';
import 'package:pitza_mitza/ui/views/profile/widgets/down-container.dart';
import 'package:pitza_mitza/ui/views/profile/widgets/middle-container.dart';
import 'package:pitza_mitza/ui/views/profile/widgets/top-container.dart';

// ignore: must_be_immutable
class Profile extends StatelessWidget {
  Profile({super.key});

  GetStorage getStorage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        SizedBox(
          height: AppDimens.height,
          width: AppDimens.width,
        ),
        ClipPath(
          clipper: CustomClipPathProfile(),
          child: Container(
            height: AppDimens.height / 5.3,
            width: AppDimens.width,
            decoration: const BoxDecoration(
              color: AppColor.secondary,
            ),
          ),
        ),
        Positioned(
            top: 20,
            right: 20,
            child: SizedBox(
              width: AppDimens.width / 1.7,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(50)),
                        border: Border.all(color: Colors.white, width: 1)),
                    child: const Icon(
                      IconlyLight.arrow_right_2,
                      color: Colors.white,
                      size: 24,
                    ),
                  ),
                  Text(
                    'حساب کاربری',
                    style: AppDimens.textTheme.titleLarge!
                        .copyWith(color: Colors.white),
                  )
                ],
              ),
            )),
        Positioned(
            top: AppDimens.height / 8.1,
            child: Column(
              children: [
                Container(
                  height: AppDimens.width / 4.5,
                  width: AppDimens.width / 4.5,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.white, width: 1),
                      image: DecorationImage(
                          image: Assets.images.saleh.provider(),
                          fit: BoxFit.fill)),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  '${getStorage.read('first_name')} ${getStorage.read('last_name')}',
                  style: AppDimens.textTheme.titleMedium,
                ),
                const SizedBox(
                  height: 4,
                ),
                Text(
                  'Muhammad@',
                  style: AppDimens.textTheme.labelMedium!
                      .copyWith(color: AppColor.darkGray),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  height: AppDimens.height / 31.25,
                  width: AppDimens.width / 11.8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.darkGray),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(8, 6, 8, 6),
                    child: SvgPicture.asset(
                      Assets.icons.editIcon,
                      height: 16,
                      width: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: AppDimens.height / 26,
                ),
                TopContainer(),
                SizedBox(
                  height: AppDimens.height / 30,
                ),
                const MiddleContainer(),
                SizedBox(
                  height: AppDimens.height / 30,
                ),
                const DownContainer(),
              ],
            ))
      ],
    );
  }
}
