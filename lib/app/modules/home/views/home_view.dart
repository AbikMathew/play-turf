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
      Obx(
        () => Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: NetworkImage(controller.isBannerLoading.value
                  ? 'https://www.kindacode.com/wp-content/uploads/2020/11/Screen-Shot-2020-11-10-at-14.35.47.jpg'
                  : controller.bannerResponse!.banner![1].bannerImage
                      .toString()),
              //  NetworkImage(controller.bannerResponse != null
              //     ? controller.bannerResponse!.banner![1].bannerImage.toString()
              //     : 'https://www.kindacode.com/wp-content/uploads/2020/11/Screen-Shot-2020-11-10-at-14.35.47.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: const DecorationImage(
            image: AssetImage("asset/images/turf/turf_image_3.jpg"),
            fit: BoxFit.cover,
          ),
        ),
      )
    ];

    return Scaffold(
      drawer: CustomDrawer(controller: controller),
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
      ),
    );
  }
}

class CustomDrawer extends StatelessWidget {
  CustomDrawer({
    required this.controller,
    Key? key,
  }) : super(key: key);

  HomeController controller;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black38.withOpacity(0.5),
      child: ListView(
        children: [
          drawerHeader(),
          DrawerListTile(
            title: 'My Bookings',
            icon: Icons.shopping_cart,
            onTap: () => Get.toNamed(Routes.MY_BOOKING),
          ),
          DrawerListTile(
            title: 'My Favorites',
            icon: Icons.favorite,
            onTap: () => Get.toNamed(Routes.FAVORITES),
          ),
          DrawerListTile(
            title: 'Settings',
            icon: Icons.person,
            onTap: () => Get.toNamed(Routes.PROFILE),
          ),
          DrawerListTile(
            title: 'Invite a friend',
            icon: Icons.person_add,
            onTap: () => Get.toNamed(Routes.PROFILE),
          ),
          DrawerListTile(
            title: 'Logout',
            icon: Icons.exit_to_app,
            onTap: () => controller.logout(),
          ),
          SizedBox(
            height: 32.h,
            // height: ,
          ),
          versionText(),
        ],
      ),
    );
  }

  Center versionText() {
    return const Center(
      child: Text(
        "Version 1.0.0",
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  DrawerHeader drawerHeader() {
    return DrawerHeader(
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
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    required this.title,
    required this.icon,
    required this.onTap,
    Key? key,
  }) : super(key: key);
  final String title;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(
        icon,
        color: Colors.white,
      ),
      onTap: () => onTap(),
    );
  }
}
