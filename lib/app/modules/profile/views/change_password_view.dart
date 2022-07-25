import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:play_turf/app/modules/constants/ui.dart';
import 'package:play_turf/app/modules/login/views/sign_in_view.dart';
import 'package:play_turf/app/modules/widgets/custom_buttons.dart';
import 'package:sizer/sizer.dart';

class ChangePasswordView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Change Password'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: 400,
              child: Image.asset('asset/images/login/login.png'),
            ),
            kHeight20,
            kHeight20,
            // const CustomTextField(
            //     labelText: 'abkdd10@gmail.com',
            //     hintText: 'E-mail ID',
            //     icon: Icons.email),
            // const CustomTextField(
            //     labelText: 'Password',
            //     hintText: 'Enter new password',
            //     icon: Icons.key),
            // const CustomTextField(
            //     labelText: 'Confirm Password',
            //     hintText: 'Re-enter new password',
            //     icon: Icons.key),
            // Spacer(),
            kHeight20,
            kHeight20,
            kHeight20,
            GreenButton(
              text: 'Submit',
              onPressed: () {},
              width: 90.w,
            ),
          ],
        ),
      ),
    );
  }
}
