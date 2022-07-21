import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
import 'package:play_turf/app/modules/constants/colors.dart';
import 'package:play_turf/app/modules/constants/theme_provider.dart';
import 'package:play_turf/app/modules/home/views/home_view.dart';
import 'package:play_turf/app/modules/login/views/sign_in_view.dart';
import 'package:play_turf/app/modules/my_booking/views/my_booking_view.dart';
import 'package:play_turf/app/modules/turf_details/views/booking_confirmation_view.dart';

import 'package:sizer/sizer.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// import 'app/modules/login/views/sign_up_view.dart';
import 'app/routes/app_pages.dart';

void main() async {
  // GetStorage used to store simple data(like Shared preference)
  await GetStorage.init();

  runApp(Sizer(builder: (context, orientation, deviceType) {
    return GetMaterialApp(
      darkTheme: AppThemes.darkTheme,
      theme: AppThemes.lightTheme,
      title: "Application",
      // home: 
      // MyBookingView(),
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }));
}
