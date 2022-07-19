import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/my_booking_controller.dart';

class MyBookingView extends GetView<MyBookingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.white),
        title: Text(controller.title),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'MyBookingView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
