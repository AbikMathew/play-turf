import 'package:get/get.dart';

import '../controllers/turf_details_controller.dart';

class TurfDetailsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TurfDetailsController>(
      () => TurfDetailsController(),
    );
  }
}
