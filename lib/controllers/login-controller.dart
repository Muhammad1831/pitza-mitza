import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pitza_mitza/constants/app_api.dart';
import 'package:pitza_mitza/services/dio-services.dart';
import 'package:pitza_mitza/ui/views/onboarding/onboarding_page.dart';
import 'package:pitza_mitza/ui/views/root/root_page.dart';

class LoginController extends GetxController {
  TextEditingController phoneTextEditingController = TextEditingController();
  TextEditingController passwordTextEditingController = TextEditingController();

  verify() async {
    DioServices dioServices = DioServices();

    Map<String, dynamic> map = {
      "phone": phoneTextEditingController.text,
      "password": passwordTextEditingController.text
    };
    try {
      var response = await dioServices.postMethod(map, AppApi.token);

      if (response.statusCode == 200) {
        var box = GetStorage();
        box.write('token', response.data['access']);
        Get.offAll(RootPage());
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  login() {
    if (GetStorage().read('token') == null) {
      Get.off(const OnBoardingPage());
    } else {
      Get.off(RootPage());
    }
  }
}
