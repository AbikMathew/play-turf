import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/routes/app_pages.dart';
import 'package:sizer/sizer.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    List<Widget> list = [
      Container(
        // padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage("asset/images/turf/turf_landscape_1.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/images/turf/turf_landscape_2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      )
    ];
    List<Widget> list2 = [
      Container(
        // padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage("asset/images/turf/turf_image_2.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("asset/images/turf/turf_image_3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      )
    ];

    return Scaffold(
        drawer: const CustomDrawer(),
        appBar: AppBar(
          iconTheme: const IconThemeData(color: Colors.white),
          elevation: 0,
          backgroundColor: Colors.black,
          title: const Text('Hi Abik',
              style: TextStyle(color: Colors.white, fontSize: 25)),
        ),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(),
              SizedBox(
                width: 90.w,
                child: CarouselSlider.builder(
                  options: CarouselOptions(
                    // autoPlay: true,
                    padEnds: false,
                    viewportFraction: 1,
                  ),
                  itemCount: 2,
                  itemBuilder: ((context, index, realIndex) {
                    return list[index];
                  }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Available Offers',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              InkWell(
                onTap: () => Get.toNamed(Routes.TURF_DETAILS),
                child: SizedBox(
                  width: 90.w,
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      autoPlay: true,
                      enlargeCenterPage: true,
                    ),
                    itemCount: 2,
                    itemBuilder: ((context, index, realIndex) {
                      return list2[index];
                    }),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Text(
                  'Book Now',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ],
          ),
        ));
  }
}

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black38.withOpacity(0.5),
      child: ListView(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                Container(
                  height: 105,
                  width: 110,
                  child: Image.asset(
                    "asset/images/onboarding_images/Home run-amico.png",
                    fit: BoxFit.cover,
                  ),
                ),
                const Text(
                  "Abik Mathew George",
                  style: TextStyle(
                      fontSize: 23,
                      // color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text(
              "My Bookings",
            ),
            leading: const Icon(
              Icons.shopping_cart,
              color: Colors.white,
            ),
            onTap: () {
              Get.toNamed(Routes.MY_BOOKING);
            },
          ),
          ListTile(
            title: const Text(
              "My Favorites",
            ),
            leading: const Icon(
              Icons.favorite,
              color: Colors.white,
            ),
            onTap: () {
              Get.toNamed(Routes.FAVORITES);
            },
          ),
          ListTile(
            title: const Text(
              "Settings",
            ),
            leading: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onTap: () {
               Get.toNamed(Routes.PROFILE);
            },
          ),
          ListTile(
            title: const Text(
              "Invite a friend",
            ),
            leading: const Icon(
              Icons.person_add,
              color: Colors.white,
            ),
            onTap: () {
              // Get.toNamed(AppPages.HOME);
            },
          ),
          ListTile(
            title: const Text(
              "Log out",
            ),
            leading: const Icon(
              Icons.logout,
              color: Colors.white,
            ),
            onTap: () {
              // Get.toNamed(AppPages.HOME);
            },
          ),
          const SizedBox(
            height: 270,
          ),
          const Center(
              child: const Text("Version 1.0.0",
                  style: TextStyle(color: Colors.white))),
        ],
      ),
    );
  }
}
