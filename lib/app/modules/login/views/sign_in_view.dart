import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/modules/constants/colors.dart';
import 'package:play_turf/app/modules/constants/ui.dart';
import 'package:play_turf/app/modules/login/controllers/sign_in_controller.dart';
import 'package:play_turf/app/modules/login/views/sign_up_view.dart';
import 'package:play_turf/app/modules/widgets/custom_buttons.dart';
import 'package:sizer/sizer.dart';

class SignInView extends GetView {
  SignInController signInController = Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 2.h),
              Text(
                'Sign In',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              SizedBox(
                height: 35.h,
                width: 75.w,
                child: Image.asset('asset/images/login/login.png'),
              ),
              SizedBox(height: 2.h),
              CustomTextField(
                  labelText: 'Username 200',
                  hintText: 'Enter your username',
                  icon: Icons.email_outlined,
                  controller: signInController.usernameEditingController),
              CustomTextField(
                labelText: 'Password',
                hintText: 'Enter your password',
                icon: Icons.key_outlined,
                obscureText: true,
                controller: signInController.passwordEditingController,
              ),
              SizedBox(height: 10.h),
              GreenButton(
                text: 'Sign in',
                onPressed: () {
                  signInController.signIn();

                  // Get.to(SignUpView());
                },
                width: 90.w,
              ),
              const SizedBox(height: 20),
              const GoogleSingIn(),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  CustomTextField({
    Key? key,
    required this.labelText,
    required this.hintText,
    required this.icon,
    required this.controller,
    this.suffixIcon,
    this.obscureText = false,
  }) : super(key: key);

  final String labelText;
  final String hintText;
  final IconData icon;
  final IconData? suffixIcon;
  TextEditingController controller;
  bool obscureText;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 10.h,
        width: 90.w,
        child: TextField(
          obscureText: obscureText,
          cursorHeight: 20,
          autofocus: false,
          controller: controller,
          decoration: InputDecoration(
            fillColor: kLightGrey,
            filled: true,
            labelText: labelText,
            hintText: hintText,
            labelStyle: Theme.of(context).textTheme.bodyLarge,
            hintStyle: Theme.of(context).textTheme.bodyLarge,
            prefixIcon: Icon(icon, color: Colors.white70),
            suffixIcon: suffixIcon != null
                ? Icon(suffixIcon, color: Colors.white70)
                : null,
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
