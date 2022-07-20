import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/modules/constants/ui.dart';
import 'package:play_turf/app/modules/profile/views/change_password_view.dart';
import 'package:play_turf/app/modules/profile/views/edit_profile_view.dart';
import 'package:play_turf/app/modules/widgets/custom_buttons.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Profile'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset(
                  'asset/images/onboarding_images/Junior soccer-amico.png',
                  fit: BoxFit.cover,
                  height: 100,
                ),
              ),
            ),
            kHeight20,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Name:'),
                    Text('Phone no:'),
                    Text('E-mail:'),
                  ],
                ),
                kWidth20,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text('Abik Mathew George'),
                    Text('8311905632'),
                    Text('abkmg103@gmail.com'),
                  ],
                )
              ],
            ),
            kHeight20,
            kHeight20,
            GreyButton(
              text: 'Edit Profile',
              onPressed: () {
                Get.to(() => EditProfileView());
              },
              width: 200,
            ),
            kHeight20,
            GreyButton(
              text: 'Change Password',
              onPressed: () {
                Get.to(() => ChangePasswordView());
              },
              width: 200,
            )
            // Text("Name")
          ],
        ));
  }
}
