import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/turf_details_controller.dart';

class TurfDetailsView extends GetView<TurfDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TurfDetailsView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'TurfDetailsView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
