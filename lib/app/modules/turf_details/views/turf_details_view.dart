import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/modules/constants/colors.dart';
import 'package:play_turf/app/modules/constants/ui.dart';
import 'package:sizer/sizer.dart';

import '../controllers/turf_details_controller.dart';

class TurfDetailsView extends GetView<TurfDetailsController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            stretch: true,
            expandedHeight: 350,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text('Turf Details'),
              background: Image.asset(
                'asset/images/turf/turf_image_2.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              ((context, index) {
                return SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Masters Turf',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                            Spacer(),
                            Text(
                              "₹2000",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                        IconTextTile(
                            icon: Icons.phone,
                            text: '8111904738',
                            onTap: () {}),
                        IconTextTile(
                            icon: Icons.location_on,
                            text: 'Kakkanad, Kottayam',
                            onTap: () {}),
                        const Text('Book Here'),
                        dateSelection(),
                        kHeight,
                        sectionSelection(),
                        kHeight,
                        selectDate(),
                        kHeight20,
  
                      ],
                    ),
                  ),
                );
              }),
              childCount: 1,
            ),
          )
        ],
      ),
    );
  }

  Column selectDate() {
    return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Available Time Slots'),
                          kHeight,
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: kBorderRadius,
                              color: kLightGrey,
                            ),
                            child: Row(
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Text('9 am'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('10 am'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('11 am'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('12 am'),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Text('1 pm'),
                                ),
                              ],
                            ),
                          )
                        ],
                      );
  }

  Row sectionSelection() {
    return Row(
      children: [
        Text('Section'),
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

  InkWell dateSelection() {
    return InkWell(
      onTap: () {},
      child: Row(
        children: [
          const Text('Date'),
          const SizedBox(
            width: 20,
          ),
          Container(
            height: 50,
            width: 60.w,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TextField(
              decoration: InputDecoration(
                label: Text('Tap to add date'),
                fillColor: kLightGrey,
                filled: true,
              ),
              enabled: false,
            ),
          ),
          const SizedBox(width: 10),
          const Icon(Icons.calendar_month)
        ],
      ),
    );
  }
}

class IconTextTile extends StatelessWidget {
  const IconTextTile({
    Key? key,
    required this.icon,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.only(left: 20),
        height: 50,
        width: double.infinity,
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(
              width: 20,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.titleMedium,
            )
          ],
        ),
      ),
    );
  }
}
