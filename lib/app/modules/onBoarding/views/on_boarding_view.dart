import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/modules/constants/colors.dart';
import 'package:sizer/sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  @override
  Widget build(BuildContext context) {
    final lastPage = controller.onboardingPages.length - 1;

    return Scaffold(
      body: PageView.builder(
          onPageChanged: (index) {
            if (index == lastPage) {
              log('vanno');
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
            ? TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(primaryGreen),
                ),
                child: Text('Yaa mone', style: TextStyle(color: Colors.white),),
              )
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
    // required this.controller,
    // required this.controller,
    // required this.controller,
  }) : super(key: key);

  final OnBoardingController controller;
  final int lastPage;
  // final OnBoardingController controller;
  // final OnBoardingController controller;
  // final OnBoardingController controller;

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
