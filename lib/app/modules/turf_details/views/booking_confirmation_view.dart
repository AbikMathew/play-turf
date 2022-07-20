// import 'dart:html';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/modules/constants/ui.dart';
import 'package:sizer/sizer.dart';

import '../../constants/colors.dart';
import '../../widgets/custom_buttons.dart';

class BookingConfirmationView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Confirmation'),
        // titleTextStyle: const TextStyle(color: Colors.white),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Center Details',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              centerDetailsTable(context),
              kHeight20,
              Text('Booking Details',
                  style: Theme.of(context).textTheme.titleMedium),
              bookingDetailsTable(context),
              kHeight20,
              Text('User Details',
                  style: Theme.of(context).textTheme.titleMedium),
              userDetailsTable(context),
              kHeight20,
              kHeight20,
              kHeight20,
              const EnterCouponCode(),
              kHeight20,
              kHeight20,
              paymentMethod(context),
              kHeight20,
              Row(
                children: const [
                  Text(
                    'Total Amount',
                  ),
                  Spacer(),
                  Text('₹2000')
                ],
              ),
              kHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: () {}, child: const Text('Cancel')),
                  const Spacer(),
                  GreenButtonS(text: 'Confirm Booking', onPressed: () {})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Row paymentMethod(context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          // color: Colors.red,
          height: 50,
          width: 80,
          child: Text(
            'Payment Method',
            textAlign: TextAlign.start,
            style: Theme.of(context).textTheme.titleMedium,
            softWrap: true,
          ),
        ),
        kWidth,
        Container(
          width: 100,
          height: 50,
          // color: kLightGrey,
          decoration: BoxDecoration(
            borderRadius: kBorderRadius,
            color: kButtonGrey,
          ),

          child: const Center(
            child: Text(
              'Morning',
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
        kWidth20,
        const Text('Evening'),
      ],
    );
  }

  Table centerDetailsTable(context) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.4),
        1: FractionColumnWidth(0.7),
      },
      children: [
        TableRow(children: [
          Text(
            'Name',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Text('Gobrols Turf'),
        ]),
        TableRow(children: [
          Text(
            'Phone no.',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Text('8111949042'),
        ]),
        TableRow(children: [
          Text(
            'Location',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Text('Cameron, Pickala'),
        ])
      ],
    );
  }

  Table bookingDetailsTable(context) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.4),
        1: FractionColumnWidth(0.7),
      },
      children: [
        TableRow(children: [
          Text(
            'Date',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Text('27/08/2020'),
        ]),
        TableRow(children: [
          Text(
            'Time',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Text('09 - 10 AM'),
        ]),
        TableRow(children: [
          Text(
            'Offers',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Text('5%'),
        ])
      ],
    );
  }

  Table userDetailsTable(context) {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.4),
        1: FractionColumnWidth(0.7),
      },
      children: [
        TableRow(children: [
          Text(
            'Name',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Text('Morwin Delcarm'),
        ]),
        TableRow(children: [
          Text(
            'Phone no.',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Text('8111949042'),
        ]),
        TableRow(children: [
          Text(
            'email',
            style: Theme.of(context).textTheme.titleSmall,
          ),
          const Text('kenloan@gmail.com'),
        ])
      ],
    );
  }
}

class EnterCouponCode extends StatelessWidget {
  const EnterCouponCode({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 7.h,
        width: 90.w,
        child: TextField(
          cursorHeight: 20,
          autofocus: false,
          // controller:
          //     TextEditingController(text: "Initial Text here"),
          decoration: InputDecoration(
            fillColor: kLightGrey,
            filled: true,
            labelText: 'Coupon',
            hintText: 'Enter coupon ',
            labelStyle: Theme.of(context).textTheme.bodyLarge,
            hintStyle: Theme.of(context).textTheme.bodyLarge,
            suffixIcon: Container(
              height: 7.h,
              width: 70,
              decoration: BoxDecoration(
                  borderRadius: kBorderRadius, color: kButtonGrey),
              child: const Center(
                  child: const Text(
                'Apply Coupon',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              )),
            ),
            // prefixIcon: Icon(, color: Colors.white70),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            border: OutlineInputBorder(
              borderRadius: kBorderRadius,
              borderSide: const BorderSide(color: Colors.grey, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}
