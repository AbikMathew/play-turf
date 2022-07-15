import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:play_turf/app/modules/constants/theme_provider.dart';

import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(),
          SizedBox(
            height: 300,
            width: 300,
            child: Lottie.asset('asset/json/turf_loading.json'),
          ),
          Text(
            'Play Turf',
            style: Theme.of(context).textTheme.titleLarge,
          ),
  
        ],
      ),
    );
  }
}
