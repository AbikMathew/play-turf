import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController
  final getBox = GetStorage();
  final count = 0.obs;
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

  void logout() {
    // getBox.remove('isSignedIn');
    getBox.write('isSignedIn', false);
    getBox.write('first_time', false);
    Get.offAllNamed(Routes.SPLASH);
  }
}
