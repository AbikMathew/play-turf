import 'package:get/get.dart';

import 'package:play_turf/app/modules/login/controllers/sign_in_controller.dart';

import '../controllers/login_controller.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(
      () => SignInController(),
    );
    Get.lazyPut<LoginController>(
      () => LoginController(),
    );
  }
}
