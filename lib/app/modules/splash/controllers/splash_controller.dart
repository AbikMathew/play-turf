// import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:play_turf/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController

  final count = 0.obs;
  final getStorage = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();

    if (getStorage.read('first_time') == false) {
      Future.delayed(const Duration(milliseconds: 1500), () {
        Get.offAllNamed(Routes.HOME);
      });
    } else {
      Future.delayed(const Duration(milliseconds: 1500), () {
        Get.offAllNamed(Routes.ON_BOARDING);
        // Get.offAllNamed(Routes.SPLASH);
      });
    }
  }

  @override
  void onClose() {}

  void increment() => count.value++;
}
