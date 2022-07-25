import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:play_turf/app/data/providers/api_providers.dart';

import 'package:play_turf/app/modules/login/model/login_model.dart';
import 'package:play_turf/app/routes/app_pages.dart';

class SignInController extends GetxController {
  TextEditingController usernameEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
  var dio = Dio();
  GetStorage getBox = GetStorage();

  void signIn() async {
    var formData = ({
      'email': usernameEditingController.text,
      'password': passwordEditingController.text
    });

    var response =
        await dio.post(ApiUri.baseUrl + ApiUri.loginPath, data: formData);
//      log(response.data.toString());
    if (response.statusCode == 200) {
      LoginResponse loginData = LoginResponse.fromJson(response.data);

      if (loginData.message == 'Invalid login details') {
        Get.snackbar(
          'Invalid Credentials',
          'Username or Password is incorrect. Try again',
          backgroundColor: Colors.red,
        );
      } else if (loginData.message == 'Login Successfull') {
        Get.offAllNamed(Routes.HOME);
        getBox.write('isSignedIn', true);
      }
    } else {
      log('error');
    }
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
