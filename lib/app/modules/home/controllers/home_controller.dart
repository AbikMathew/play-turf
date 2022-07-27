import 'dart:developer';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:play_turf/app/data/services/api_services.dart';
import 'package:play_turf/app/modules/home/models/banner_model.dart';

import '../../../routes/app_pages.dart';

class HomeController extends GetxController {
  final getBox = GetStorage();
  final ApiServices _apiServices = ApiServices();
   BannerResponseModel? bannerResponse;
  RxBool isBannerLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    getBanner();
  }

  getBanner() async {
    isBannerLoading.value = true;
    try {
      final response = await _apiServices.getBanner();
      if (response.statusCode == 200) {
        if (response.data['message'] == 'Request successfull') {
              bannerResponse = BannerResponseModel.fromJson(response.data);
              isBannerLoading.value = false;
          // bannerResponse = BannerResponseModel.fromJson(
          //   (response.data),
          // );
          // print(bannerResponse.toString());
          // log('evide');
        // log(bannerResponse[0].banner[0].bannerImage);
          // log(response.data['data']['banner'][0]['image']);

        } else {
          log('sfsdfsdfsdfsdfs');
        }
        final data = response.data;
        log(data);
      } else {}
    } catch (e) {}
  }

  void logout() {
    // getBox.remove('isSignedIn');
    getBox.write('isSignedIn', false);
    getBox.write('first_time', false);
    Get.offAllNamed(Routes.SPLASH);
  }
}
