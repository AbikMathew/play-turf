import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/routes/app_pages.dart';
import 'package:sizer/sizer.dart';

import '../../widgets/custom_buttons.dart';
import 'sign_in_view.dart';
import 'sign_up_view.dart';

class SignUpView extends GetView {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 2.h),
            Text(
              'Sign up',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            SizedBox(height: 5.h),
            const CustomTextField(
                labelText: 'Name',
                hintText: 'Enter your name',
                icon: Icons.person_outline),
            const CustomTextField(
                labelText: 'Phone no.',
                hintText: 'Enter your phone number',
                icon: Icons.phone_outlined),
            const CustomTextField(
                labelText: 'E-mail',
                hintText: 'Enter your e-mail ID',
                icon: Icons.email_outlined),
            const CustomTextField(
                labelText: 'Password',
                hintText: 'Enter your password',
                icon: Icons.key_outlined),
            const CustomTextField(
                labelText: 'Confirm Password',
                hintText: 'Re-enter your password',
                icon: Icons.key_outlined),
            SizedBox(height: 10.h),
            GreenButton(
              text: 'Sign up',
              onPressed: () {
                Get.to(SignInView());
                // Get.offAllNamed(Routes.HOME);
              },
              width: 90.w,
            ),
            const SizedBox(height: 20),
            const GoogleSingIn(),
          ],
        ),
      ),
    );
  }
}
