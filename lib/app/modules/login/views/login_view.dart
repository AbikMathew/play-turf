import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/modules/constants/colors.dart';
import 'package:play_turf/app/modules/widgets/custom_buttons.dart';
import 'package:sizer/sizer.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 15.h),
          Image.asset('asset/images/onboarding_images/login.png'),
          const Spacer(),
          GreenButton(text: 'Sign up', onPressed: () {}),
          const SizedBox(height: 15),
          const AlreadyHaveAccount(),
          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account',
          style: Theme.of(context).textTheme.titleSmall,
        ),
        TextButton(
          onPressed: () {},
          child: Text(
            'Sign in',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: primaryGreen),
          ),
        ),
      ],
    );
  }
}
