import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pitza_mitza/components/custom_app_bar.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/gen/assets.gen.dart';
import 'package:pitza_mitza/ui/views/discover/discover_page.dart';
import 'package:pitza_mitza/ui/views/home/home_page.dart';
import 'package:pitza_mitza/ui/views/profile/profile_page.dart';
import 'package:pitza_mitza/ui/views/root/widgets/bottom-navigation.dart';

// ignore: must_be_immutable
class RootPage extends StatelessWidget {
  RootPage({super.key});

  List<int> route = [0];
  RxInt pageIndex = 0.obs;

  List<Widget> listPages = [
    const HomePage(),
    Container(
      height: AppDimens.height,
      width: AppDimens.width,
      color: Colors.red,
    ),
    DiscoverPage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Obx(() => PopScope(
            canPop: !(route.length > 1),
            onPopInvoked: (didPop) {
              if (route.length > 1) {
                route.removeLast();
                pageIndex.value = route.last;
              }
            },
            child: Scaffold(
              backgroundColor: AppColor.scaffoldBackGround,
              appBar: pageIndex.value == 0 ? const CustomAppBar() : null,
              body: listPages[pageIndex.value],
              bottomNavigationBar: BottomNavigation(
                pageIndex: pageIndex,
                route: route,
              ),
              floatingActionButton: Container(
                  height: AppDimens.width / 7.5,
                  width: AppDimens.width / 7.5,
                  decoration: const BoxDecoration(
                      color: AppColor.primary, shape: BoxShape.circle),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(AppDimens.medium,
                        AppDimens.verySmall, AppDimens.medium, AppDimens.large),
                    child: SvgPicture.asset(Assets.icons.bag),
                  )),
              floatingActionButtonLocation:
                  FloatingActionButtonLocation.centerDocked,
            ),
          )),
    );
  }
}
