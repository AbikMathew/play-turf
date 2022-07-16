import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/modules/constants/colors.dart';
import 'package:play_turf/app/routes/app_pages.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/custom_buttons.dart';
import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  @override
  Widget build(BuildContext context) {
    final lastPage = controller.onboardingPages.length - 1;

    return Scaffold(
      body: PageView.builder(
          onPageChanged: (index) {
            if (index == lastPage) {
              controller.isLastPage.value = true;
            }
          },
          controller: controller.pageController.value,
          itemBuilder: ((context, index) => Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(controller.onboardingPages[index].imageAsset),
                    SizedBox(height: 10.h),
                    Text(
                      controller.onboardingPages[index].description,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.titleMedium,
                    )
                  ],
                ),
              )),
          itemCount: controller.onboardingPages.length),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        height: 100,
        color: Colors.black,
        child: Obx(() => controller.isLastPage.value
            ? Center(
                child: GreenButton(
                text: 'Get Started',
                onPressed: () => Get.offAllNamed(Routes.LOGIN),
              ))
            : BottomBar(
                controller: controller,
                lastPage: lastPage,
              )),
      ),
    );
  }
}



class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
    required this.controller,
    required this.lastPage,
  }) : super(key: key);

  final OnBoardingController controller;
  final int lastPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            controller.pageController.value.jumpToPage(lastPage);
          },
          child: const Text('skip'),
        ),
        Center(
          child: Obx(
            () => SmoothPageIndicator(
              controller: controller.pageController.value,
              count: controller.onboardingPages.length,
              effect: const WormEffect(activeDotColor: primaryGreen),
            ),
          ),
        ),
        TextButton(
          onPressed: () {
            controller.pageController.value.nextPage(
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeInOut,
            );
          },
          child: const Text('Next'),
        ),
      ],
    );
  }
}
