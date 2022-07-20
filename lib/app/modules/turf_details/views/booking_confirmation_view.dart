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
        titleTextStyle: const TextStyle(color: Colors.white),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Center Details',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              centerDetailsTable(),
              kHeight20,
              const Text('Booking Details'),
              bookingDetailsTable(),
              kHeight20,
              const Text('User Details'),
              userDetailsTable(),
              kHeight20,
              const EnterCouponCode(),
              kHeight20,
              paymentMethod(),
              kHeight20,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: () {}, child: Text('Cancel')),
                  GreenButtonS(text: 'Confirm Booking', onPressed: () {})
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Row paymentMethod() {
    return Row(
      children: [
        Container(
          height: 40,
          width: 70,
          child: const Text(
            'Payment Method',
            softWrap: true,
          ),
        ),
        kWidth,
        Container(
          width: 100,
          height: 30,
          // color: kLightGrey,
          decoration: BoxDecoration(
            borderRadius: kBorderRadius,
            color: kButtonGrey,
          ),

          child: const Center(
              child: Text('Morning', style: TextStyle(color: Colors.black))),
        ),
        kWidth20,
        Text('Evening'),
      ],
    );
  }

  Table centerDetailsTable() {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.4),
        1: FractionColumnWidth(0.7),
      },
      children: const [
        TableRow(children: [
          Text('Name'),
          Text('Gobrols Turf'),
        ]),
        TableRow(children: [
          Text('Phone no.'),
          Text('8111949042'),
        ]),
        TableRow(children: [
          Text('Location'),
          Text('Cameron, Pickala'),
        ])
      ],
    );
  }

  Table bookingDetailsTable() {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.4),
        1: FractionColumnWidth(0.7),
      },
      children: const [
        TableRow(children: [
          Text('Date'),
          Text('27/08/2020'),
        ]),
        TableRow(children: [
          Text('Time'),
          Text('09 - 10 AM'),
        ]),
        TableRow(children: [
          Text('Offers'),
          Text('5%'),
        ])
      ],
    );
  }

  Table userDetailsTable() {
    return Table(
      columnWidths: const {
        0: FractionColumnWidth(0.4),
        1: FractionColumnWidth(0.7),
      },
      children: const [
        TableRow(children: [
          Text('Name'),
          Text('Morwin Delcarm'),
        ]),
        TableRow(children: [
          Text('Phone no.'),
          Text('8111949042'),
        ]),
        TableRow(children: [
          Text('email'),
          Text('kenloan@gmail.com'),
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
              child: Center(
                  child: Text(
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
