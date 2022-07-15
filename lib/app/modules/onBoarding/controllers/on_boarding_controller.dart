import 'package:get/get.dart';
import 'package:play_turf/app/modules/onBoarding/model/onBoarding_info.dart';

class OnBoardingController extends GetxController {
  //TODO: Implement OnBoardingController
  List<OnboardingInfo> onboardingPages = [
     OnboardingInfo('asset/images/onboarding_images/Home run-amico.png', 'One man practicing sportsmanship is far better than 50 preaching it.'),
     OnboardingInfo('asset/images/onboarding_images/Junior soccer-amico.png', 'One man practicing sportsmanship is far better than 50 preaching it.'),
  ];

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
