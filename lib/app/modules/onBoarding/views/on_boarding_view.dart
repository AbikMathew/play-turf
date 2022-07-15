import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/on_boarding_controller.dart';

class OnBoardingView extends GetView<OnBoardingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
          itemBuilder: ((context, index) => Container(
                child: Column(
                  children: [
                    Image.asset(controller.onboardingPages[index].imageAsset),
                    Text(
                      controller.onboardingPages[index].description,
                      style: TextStyle(color: Colors.amber),
                    )
                  ],
                ),
              )),
          itemCount: controller.onboardingPages.length),
      bottomSheet: Container(
        height: 100,
        // color: ,
      ),
    );
  }
}
