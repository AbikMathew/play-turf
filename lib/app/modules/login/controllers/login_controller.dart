import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:play_turf/app/routes/app_pages.dart';

class LoginController extends GetxController {
  //TODO: Implement LoginController

  final count = 0.obs;
  final getStorage = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;

  login() {
    getStorage.write("first_time", false); //For not showing Onboarding/login page but go directly to home page after first time
    Get.offAllNamed(Routes.HOME);
  }
}
