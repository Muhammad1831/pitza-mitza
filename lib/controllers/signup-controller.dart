import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pitza_mitza/constants/app_api.dart';
import 'package:pitza_mitza/constants/app_color.dart';
import 'package:pitza_mitza/constants/app_dimens.dart';
import 'package:pitza_mitza/constants/app_strings.dart';
import 'package:pitza_mitza/services/dio-services.dart';
import 'package:pitza_mitza/ui/views/login/login_page.dart';

class SignUpController extends GetxController {
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController firstName = TextEditingController();
  TextEditingController lastName = TextEditingController();

  Future<dynamic> register() async {
    DioServices dioServices = DioServices();

    Map<String, dynamic> map = {
      "phone": phone.text,
      "email": "",
      "password": password.text,
      "first_name": firstName.text,
      "last_name": lastName.text
    };
    var response = await dioServices.postMethod(map, AppApi.signupUser);
    try {
      if (response.statusCode == 201) {
        var box = GetStorage();

        box.write('phone', response.data['phone']);
        box.write('first_name', response.data['first_name']);
        box.write('last_name', response.data['last_name']);

        Get.snackbar(AppString.register, AppString.successfulRegistration,
            duration: const Duration(seconds: 2),
            backgroundColor: AppColor.successfulSnackBar,
            snackStyle: SnackStyle.FLOATING,
            padding: const EdgeInsets.all(AppDimens.verySmall));
            
        Future.delayed(const Duration(seconds: 2), () => Get.to(Login()));
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }
}
