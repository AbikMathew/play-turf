import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/modules/constants/colors.dart';
import 'package:play_turf/app/modules/constants/ui.dart';
import 'package:play_turf/app/modules/widgets/custom_buttons.dart';
import 'package:play_turf/app/routes/app_pages.dart';
import 'package:sizer/sizer.dart';

import '../controllers/favorites_controller.dart';

class FavoritesView extends GetView<FavoritesController> {
  const FavoritesView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text(
          'Favorites',
          style: TextStyle(color: kPrimaryGreen),
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemBuilder: ((context, index) {
            return Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        // color: Colors.red,
                        height: 200,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: const DecorationImage(
                            image: AssetImage(
                                'asset/images/turf/turf_image_2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Positioned(
                          // width: double.infinity,
                          bottom: 5,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(width: 10),
                              Text(
                                'Canon Turf',
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              ),
                            ],
                          ))
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GreyButton(
                          text: 'Remove',
                          onPressed: () {
                            Get.defaultDialog(
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 20,
                                vertical: 10,
                              ),
                              titlePadding: const EdgeInsets.all(25),
                              radius: 10,
                              backgroundColor: Colors.black.withOpacity(0.7),
                              titleStyle:
                                  Theme.of(context).textTheme.headlineSmall,
                              title: 'Remove from Favorites',
                              content: const Text(
                                  'Are you sure you want to remove Canon Truf from the favorites?'),
                              actions: [
                                GreyButton(
                                    text: 'Cancel',
                                    onPressed: () {
                                      Get.back();
                                    }),
                                RedButton(
                                    text: 'Confirm',
                                    onPressed: () {
                                      Get.back();
                                    }),
                              ],
                            );
                          }),
                      GreenButtonS(
                        text: 'Book Now',
                        onPressed: () {
                          Get.toNamed(Routes.TURF_DETAILS);
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            );
          }),
          itemCount: 10),
    );
  }

  Center emptyList(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(height: 10.h),
        Image.asset('asset/images/favorites/empty_list.png'),
        Text('Favorites list is empty',
            style: Theme.of(context).textTheme.headlineSmall)
      ],
    ));
  }
}
