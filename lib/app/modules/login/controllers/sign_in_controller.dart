import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart' as getx;

class SignInController extends getx.GetxController {
  TextEditingController usernameEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  var dio = Dio();

  void signIn() async {
    log('Haloooooooooo');

    var formData = ({
      'email': usernameEditingController,
      'password': passwordEditingController
    });

    var response = await dio.post('https://sudheeshm.herokuapp.com/user_signin',
        data: formData);

    print(response.toString());
  }

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  // @override
  // void onReady() {
  //   super.onReady();
  // }

  @override
  void onClose() {}
}
