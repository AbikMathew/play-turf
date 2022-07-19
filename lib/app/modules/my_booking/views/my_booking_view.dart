import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/modules/constants/colors.dart';
import 'package:play_turf/app/modules/constants/ui.dart';
import 'package:play_turf/app/modules/widgets/custom_buttons.dart';
import 'package:sizer/sizer.dart';

import '../controllers/my_booking_controller.dart';

class MyBookingView extends GetView<MyBookingController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('My Bookings'),
      ),
      body: ListView(
        children: const [
          BookingDetailsCard(),
          BookingDetailsCard(),
          BookingDetailsCard(),
        ],
      ),
    );
  }
}

class BookingDetailsCard extends StatelessWidget {
  const BookingDetailsCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.all(10),
        padding: const EdgeInsets.all(20),
        height: 35.h,
        width: 85.w,
        decoration:
            BoxDecoration(color: kLightGrey, borderRadius: kBorderRadius),
        child: Column(
          children: [
            Text('Booking Details',
                style: Theme.of(context).textTheme.headlineSmall),
            kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Name'),
                    Text('Date'),
                    Text('Time'),
                    Text('Category'),
                    Text('Status'),
                  ],
                ),
                kWidth20,
                kWidth20,
                kWidth20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Canon Tuf'),
                    Text('22/11/2019'),
                    Text('09 - 10 AM'),
                    Text('Football'),
                    Text('Booked'),
                  ],
                )
              ],
            ),
            kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GreyButton(
                  text: 'View',
                  onPressed: () {},
                ),
                RedButton(
                    text: 'Cancel',
                    onPressed: () {
                      Get.defaultDialog(
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        titlePadding: const EdgeInsets.all(25),
                        radius: 10,
                        backgroundColor: kLightGrey,
                        titleStyle: Theme.of(context).textTheme.headlineSmall,
                        title: 'Cancel Booking',
                        content: const Text(
                            'Are you sure you want to cancel this booking?'),
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
                              })
                          // ElevatedButton(
                          //   child: Text('Confirm'),
                          //   onPressed: () {
                          //     Get.back();
                          //   },
                          // ),
                        ],
                        // );
                      );
                    })
              ],
            )
          ],
        )
        // crossAxisAlignment: CrossAxisAlignment.start,
        // Column(
        //   children: [
        //     kHeight20,
        //     Row(
        //       children: const [
        //         Text('Name'),
        //        Spacer(),
        //         Text('2082100'),
        //       ],
        //     ),
        //     Row(
        //       children: const [
        //         Text('Date'),
        //        Spacer(),
        //         Text('28/02/1200'),
        //       ],
        //     ),
        //     Row(
        //       children: const [
        //         Text('Time'),
        //        Spacer(),
        //         Text('09 - 10 AM'),
        //       ],
        //     ),
        //     Row(
        //       children: const [
        //         Text('Category'),
        //        Spacer(),
        //         Text('Football'),
        //       ],
        //     ),
        //     Row(
        //       children: const [
        //         Text('Status'),
        //        Spacer(),
        //         Text('Booked'),
        //       ],
        //     ),
        //   ],
        // ),
        );
  }
}
