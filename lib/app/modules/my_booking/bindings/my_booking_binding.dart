import 'package:get/get.dart';

import '../controllers/my_booking_controller.dart';

class MyBookingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MyBookingController>(() => MyBookingController(),
    );
  }
}
