import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:pitza_mitza/ui/views/onboarding/onboarding_page.dart';

class LogOutController extends GetxController {
  logout() {
    GetStorage().remove('token');
    Get.offAll(const OnBoardingPage());
  }
}
