import 'package:get/get.dart';

class MyBookingController extends GetxController {
  //TODO: Implement MyBookingController
   final String title = 'Abik';
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
  void onClose() {}
  void increment() => count.value++;
}
