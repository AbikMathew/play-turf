import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:play_turf/app/data/providers/api_providers.dart';

class ApiServices {
  Dio dio = Dio(BaseOptions(baseUrl: ApiUri.baseUrl));

  Future<Response> getBanner()async{
    final response = await dio.get(ApiUri.getBannerData);
    log(response.data.toString());
    return response;
  }
}
