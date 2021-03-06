import 'package:get/get.dart';

import 'package:play_turf/app/modules/my_booking/bindings/my_booking_binding.dart';
import 'package:play_turf/app/modules/my_booking/views/my_booking_view.dart';
import 'package:play_turf/app/modules/onBoarding/bindings/on_boarding_binding.dart';
import 'package:play_turf/app/modules/onBoarding/views/on_boarding_view.dart';
import 'package:play_turf/app/modules/profile/bindings/profile_binding.dart';
import 'package:play_turf/app/modules/profile/views/profile_view.dart';
import 'package:play_turf/app/modules/splash/bindings/splash_binding.dart';
import 'package:play_turf/app/modules/splash/views/splash_view.dart';
import 'package:play_turf/app/modules/turf_details/bindings/turf_details_binding.dart';
import 'package:play_turf/app/modules/turf_details/views/turf_details_view.dart';

import '../modules/favorites/bindings/favorites_binding.dart';
import '../modules/favorites/views/favorites_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITES,
      page: () => const FavoritesView(),
      binding: FavoritesBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ON_BOARDING,
      page: () => OnBoardingView(),
      binding: OnBoardingBinding(),
    ),
    GetPage(
      name: _Paths.TURF_DETAILS,
      page: () => TurfDetailsView(),
      binding: TurfDetailsBinding(),
    ),
    GetPage(
      name: _Paths.MY_BOOKING,
      page: () => MyBookingView(),
      binding: MyBookingBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => ProfileView(),
      binding: ProfileBinding(),
    ),
  ];
}
