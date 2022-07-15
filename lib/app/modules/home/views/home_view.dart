import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Center(
        child: TextButton(onPressed: (){
          Get.toNamed(Routes.LOGIN);
        }, child: Text('Next Screen'))
        // Text(
        //   'HomeView is working',
        //   style: TextStyle(fontSize: 20),
        // ),
      ),
    );
  }
}
